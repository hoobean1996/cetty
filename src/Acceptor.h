//
// Created by BIN HE on 15/5/22.
//

#ifndef CETTY_ACCEPTOR_H
#define CETTY_ACCEPTOR_H

#include <arpa/inet.h>
#include <fcntl.h>
#include <errno.h>

#include <glog/logging.h>

#include "EventLoop.h"

class IAcceptorCallback {
public:
    virtual void handleNewConnection(int fd) = 0;
};

class Acceptor: public IChannelCallback{
public:
    Acceptor(EventLoop* loop, int port, IAcceptorCallback* callback);
    ~Acceptor();
    void start();

    virtual void handleRead();
    virtual void handleWrite();

private:
    int _port;
    int _listenFd;
    Channel* _serverSockChannel;
    IAcceptorCallback* _callback;
    EventLoop* _loop;

    int listenOn();
};


#endif //CETTY_ACCEPTOR_H
