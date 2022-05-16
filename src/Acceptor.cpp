//
// Created by BIN HE on 15/5/22.
//

#include <glog/logging.h>

#include "Acceptor.h"

Acceptor::Acceptor(EventLoop *loop, int port, IAcceptorCallback *callback):
_listenFd(-1),
_serverSockChannel(nullptr),
_callback(callback),
_loop(loop),
_port(port){
    LOG(ERROR) << "create Acceptor successfully";
}

Acceptor::~Acceptor() {}

void Acceptor::start() {
    _listenFd = listenOn();
    _serverSockChannel = new Channel(_loop, _listenFd, this);
    _serverSockChannel->enableReading();
}

void Acceptor::handleRead() {
    int connFd;
    struct sockaddr_in cliAddr;
    socklen_t cliLen = sizeof (struct sockaddr_in);
    connFd = accept(_listenFd, (sockaddr*)&cliAddr, (socklen_t*)&cliLen);
    if (connFd > 0) {
        LOG(ERROR) << "create new connection successfully";
    }
    else {
        LOG(ERROR) << "[accept] new connection failed";
    }
    fcntl(connFd, F_SETFL, O_NONBLOCK);
    _callback->handleNewConnection(connFd);
}

void Acceptor::handleWrite() {}

int Acceptor::listenOn() {
    int on = 1;
    _listenFd = socket(AF_INET, SOCK_STREAM, 0);
    struct sockaddr_in serverAddr;
    fcntl(_listenFd, F_SETFL, O_NONBLOCK);
    setsockopt(_listenFd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof on);
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_addr.s_addr = htonl(INADDR_ANY);
    serverAddr.sin_port = htons(_port);

    if (-1 == bind(_listenFd, (struct sockaddr*)&serverAddr, sizeof serverAddr)) {
        LOG(ERROR) << "[bind] to port:" << _port <<  " failed";
    }

    if (-1 == listen(_listenFd, 5)) {
        LOG(ERROR) << "[listen] on 0.0.0.0:" << _port << " failed";
    }
    LOG(ERROR) << "[listen] on 0.0.0.0:" << _port << " successfully";
    return _listenFd;
}