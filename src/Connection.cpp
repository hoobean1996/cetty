//
// Created by BIN HE on 15/5/22.
//

#include <glog/logging.h>

#include "Connection.h"
#include "Channel.h"

Connection::Connection(int sockFd, EventLoop *loop, IConnectionCallback *callback):
_sockFd(sockFd),
_loop(loop),
_app(callback),
_outBuffer(new Buffer()){
    _sockChannel = new Channel(_loop, _sockFd, this);
    _sockChannel->enableReading();
    if (callback == nullptr) {
        _sockChannel->enableWriting();
    }
}

Connection::~Connection() {}

void Connection::send(bytes data) {
}

void Connection::sendMessage(const std::string &message) {
    sendInLoop(message);
}

void Connection::sendInLoop(const std::string &message) {
    _outBuffer->writeString(message);
    if(!_sockChannel->isWriting()) {
        _sockChannel->enableWriting();
    }
}

void Connection::connectionEstablished() {
    _app->onConnection(this);
}

void Connection::handleRead() {
    LOG(ERROR) << "[Connection::handleRead] triggered";
    int sockFd = _sockChannel->getFd();
    int readLength;
    char line[1024];
    if (sockFd < 0) {
        LOG(ERROR) << "[Connection::handleRead] failed, socket fd < 0";
        return;
    }
    bzero(line, 1024);
    if ((readLength = read(sockFd, line, 1024)) < 0) {
        if (errno == ECONNRESET) {
            LOG(ERROR) << "[Connection::handleRead] read from closed socket fd";
            close(sockFd);
        }
    }
    else if (readLength == 0) {
        LOG(ERROR) << "[Connection::handleRead] read 0 bytes from closed socket fd";
        close(sockFd);
    }
    else {
        std::string lineStr(line, readLength);
        LOG(ERROR)  << "[Connection::handleRead] read data from socket fd=" << sockFd << " data" << lineStr;
        Buffer* buffer = new Buffer();
        buffer->writeString(lineStr);
        _app->onMessage(this, buffer);
    }
}

void Connection::handleWrite() {
    LOG(ERROR) << "[Connection::handleWrite] trigger";
    int sockFd = _sockChannel->getFd();
    if (_sockChannel->isWriting()) {
        int n = ::write(sockFd, _outBuffer->peek(),_outBuffer->readableBytes());
        if (n > 0) {
            LOG(ERROR) << "[Connection::handleWrite] write " << n << " bytes";
            _sockChannel->disableWriting();
            _outBuffer->retrieve(n);
        }
    }
}
