//
// Created by BIN HE on 15/5/22.
//

#ifndef CETTY_BUFFER_H
#define CETTY_BUFFER_H

#include <string>

class Buffer {
public:
    Buffer();
    Buffer(const std::string& data);
    ~Buffer();
    void retrieve(int n);
    const char* peek();
    int readableBytes();
    void writeString(const std::string& buf);
    std::string readString();

private:
    std::string _buffer;
};


#endif //CETTY_BUFFER_H
