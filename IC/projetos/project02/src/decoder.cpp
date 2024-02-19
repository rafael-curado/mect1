#include "include/BitStream.hh"
#include "include/Golomb.hh"
#include <cstdint>
#include <stdio.h>
#include <sndfile.hh>
#include <sys/types.h>
#include <iostream>

#define BLOCKSIZE 1024
#define GOLOMB_M 512

int main(int argc, char** argv) {

  if (argc < 3) {
    std::cerr << "Usage: " << argv[0] << " <in_wav> <out_file>\n";
    return -1; 
  }

  uint64_t m;
  BitStream fs = BitStream(argv[1], BitStream::r);
  fs.readNBits(&m, 32);
  m >>= 32;
  printf("Decode M: %ld\n", m);
  Golomb g = Golomb(m, &fs);

  SndfileHandle wav = SndfileHandle(argv[2], SFM_WRITE, 65538, 2, 44100);

  uint bs = BLOCKSIZE;

  int64_t err, n;
  short prev[2] = {0, 0}, buffer[bs*2];
  uint i = 0;
  int bsi = 0;
  while(1) {
    err = g.decode(&n);
    if(i>=bs*2 || err) {
      wav.writef(buffer, i/2);
      i = 0;
      bsi++;
    }
    prev[i%2] = prev[i%2]+n;
    buffer[i] = prev[i%2];
    i++;
    if(err) break;
  }
  printf("Written %d blocks\n", bsi);

  return 0;
}