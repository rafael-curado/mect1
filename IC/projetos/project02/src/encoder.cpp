#include "include/BitStream.hh"
#include "include/Golomb.hh"
#include <cstdint>
#include <math.h>
#include <stdio.h>
#include <sndfile.hh>
#include <iostream>
#include <string.h>

#define BLOCKSIZE 1024
#define GOLOMB_M 512;

int main(int argc, char** argv) {
 
  if (argc < 3) {
    std::cerr << "Usage: " << argv[0] << " <in_wav> <out_file> [lossy] [q]\n";
    return -1; 
  }

  bool lossyMode = false;
  if (argc == 4) {
    if (strcmp(argv[3], "lossy") == 0) {
      lossyMode = true;
      std::cout << "Lossy Encoding\n";
    } else {  
      lossyMode = false;
      std::cout << "LossLess Encoding\n";
    }
  }

  SndfileHandle wav = SndfileHandle(argv[1]);
	if(wav.error()) {
		std::cerr << "Error: invalid input file\n";
		return 1;
  }

  if((wav.format() & SF_FORMAT_TYPEMASK) != SF_FORMAT_WAV) {
		std::cerr << "Error: file is not in WAV format\n";
		return 1;
	}


  printf("sr %d\n\n", wav.samplerate());
  
  int histogram[32768*2] = {0};
  int bs = BLOCKSIZE;

  int i;
  short samples[bs*wav.channels()];
  int nframes;
  short prev[2] = {0};
  uint64_t totalSamples = 0;
  while( (nframes = wav.readf(samples, bs)) ) {
    for(i=0; i<nframes*wav.channels(); i+=wav.channels() ) { // +=channels to read only one channel
      // show the diference between using the difference between frame to the frame itself
      // int j = samples[i]>=0 ? samples[i]*2 : -samples[i]*2-1;
      // histogram[j]+=1;
      short j = samples[i]-prev[i%2];
      int jj = j>=0? j*2 : -j*2-1;
      histogram[jj]+=1;
      prev[i%2] = samples[i]; 

    }
    totalSamples += nframes;
  }

  double geometric = 0;
  for(i=1; i<32768*2; i+=1) {
    double a = (double) histogram[i]/(double) totalSamples;
    geometric += i*a;
  }
  geometric = 1-1/geometric;
  printf("p: %f\n", geometric);
  uint32_t m = (uint) -ceil(log2(1+geometric)/log2(geometric));
  printf("m: %d\n", m);


  wav.seek(0, 0);

  BitStream fs = BitStream(argv[2], BitStream::w);
  fs.writeNBits(uint64_t(m)<<32, 32);
  Golomb g = Golomb(m, &fs);

  int quantSample;
  prev[0] = 0;
  prev[1] = 0;
  short error;
  while( (nframes = wav.readf(samples, bs)) ) {
    for(i=0; i<nframes*wav.channels(); i++ ) {
      if (lossyMode) {
        quantSample = samples[i] & 0xF000;
        error = quantSample-prev[i%2];
        g.encode(error);
        prev[i%2] = quantSample;
      } else {
        error = samples[i]-prev[i%2];
        g.encode(error);
        prev[i%2] = samples[i];
      }
    }
  }

  return 0;
}
