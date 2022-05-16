//
// Created by BIN HE on 15/5/22.
//

#ifndef CETTY_SERVER_H
#define CETTY_SERVER_H

#include <sys/epoll.h>
#include <map>

#include "EventLoop.h"
#include "Connection.h"
#include "Acceptor.h"

class Server: public IAcceptorCallback{
public:
    Server(EventLoop* loop, IConnectionCallback* callback);
    ~Server();

    void start(int port);

    virtual void handleNewConnection(int sockFd);

private:
    struct epoll_event _events[1024];
    std::map<int, Connection*> _connections;
    Acceptor* _acceptor;
    EventLoop* _loop;
    IConnectionCallback* _callback;
};


#endif //CETTY_SERVER_H
