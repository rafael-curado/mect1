#include <iostream>
#include <fstream>

class BitStream {
private:
  std::streambuf* filebuf;

  unsigned char buffer;
  short bufferpos;

public:
  enum Flag {w, r};
  std::fstream fs;

  // Constructor
  BitStream(std::string fileName, Flag flag) {
    if( flag==r ) fs.open(fileName, std::ios::in | std::ios::binary);
    if( flag==w ) fs.open(fileName, std::ios::out | std::ios::binary);
    filebuf = fs.rdbuf();

    buffer = 0;
    bufferpos = 0;
  }

  void writeString1(std::string text) {
    unsigned char charArr[text.length() + 1];
    for (size_t i = 0; i < text.length(); ++i) {
      charArr[i] = text[i];
    }
    std::cout << charArr << std::endl;
    writeBits(charArr, (sizeof(charArr)-1)*8 , 0);
  }

  void writeString2(std::string text) {
    fs << text;
  }
  
  void writeBitFlush() {
    filebuf->sputc(buffer);
    buffer = 0;
    bufferpos = 0;
  }

  void writeBit(bool bit) {
    unsigned char cbit = (unsigned char) bit;
    cbit <<= 7-bufferpos;
    buffer |= cbit;
    bufferpos += 1;

    if(bufferpos==8) {
      writeBitFlush();
    }
  }

  void writeBits(unsigned char* data, unsigned int n, unsigned int offset) {
    unsigned int i;
    for(i=0; i<n; i++) {
      bool bit = (data[i/8] >> (7-i%8)) & 0x01;
      // printf("%b [%d, %d]: %d\n", data[i/8], i/8, i%8, bit);
      writeBit(bit);
    }
  }

  void writeBits64(uint64_t data, unsigned int n) {
    for(uint64_t i=1; i<=n; i++) {
      bool bit = (data >> (64 - i)) & 0x01;
      writeBit(bit);
    }
  }

  // Read functions
  char readBit() {
    if (bufferpos == 0) {
      int read = filebuf->sbumpc();
      if( read==EOF ) return EOF;
      buffer = read;
      bufferpos = 8;
    }
    bool bit = (buffer >> (bufferpos - 1)) & 0x01;
    bufferpos -= 1;
    return bit;
  }

  char readBits(unsigned char* data, unsigned int n) {
    unsigned int size = n/8 + (n%8!=0);
    unsigned char result = 0;
    unsigned int i;
    for (i = 0; i < n; i++) {
      char bit = readBit();
      if( bit==EOF ) break;
      result = (result << 1) | (bit ? 0x01 : 0x00);
      if( i%8 == 7 ) {
       *(data+i/8) = result;
       result = 0;
      }
    }
    *(data+i/8) = result;
    return size - i/8;
  }

  char readBits64(uint64_t* data, unsigned int n) {
    *data = 0;
    for(uint64_t i=0; i<n; i++) {
      char bit = readBit(); 
      if( bit==EOF ) return 1;
      *data = (*data<<1) | (bit ? 0x1 : 0x0);
    }
    *data <<= 64-n;
    return 0;
  }
 
  // Deconstructor
  ~BitStream() {
    fs.close();
  }
};


 
