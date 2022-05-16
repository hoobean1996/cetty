//
// Created by BIN HE on 15/5/22.
//
#include <string>

#include "Buffer.h"

Buffer::Buffer() {}
Buffer::Buffer(const std::string &data):_buffer(data) {}

Buffer::~Buffer() {}

void Buffer::retrieve(int n) {
    _buffer = _buffer.substr(n, _buffer.size());
}

const char* Buffer::peek() {
    return _buffer.c_str();
}

int Buffer::readableBytes() {
    return static_cast<int>(_buffer.size());
}

std::string Buffer::readString() {
    std::string result(peek(), readableBytes());
    _buffer = _buffer.substr(readableBytes(), _buffer.size());
    return result;
}

void Buffer::writeString(const std::string &buf) {
    _buffer.append(buf);
}