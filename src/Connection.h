//
// Created by BIN HE on 15/5/22.
//

#ifndef CETTY_CONNECTION_H
#define CETTY_CONNECTION_H

#include <vector>

#include "EventLoop.h"
#include "Channel.h"
#include "Buffer.h"

class Buffer;
class Connection;
class IConnectionCallback {
public:
    virtual void onConnection(Connection* conn) = 0;
    virtual void onMessage(Connection* conn, Buffer* buffer) = 0;
    virtual void onWriteComplete(Connection* conn) = 0;
};


class Connection:public IChannelCallback {
public:
    Connection(int sockFd, EventLoop* loop, IConnectionCallback* callback);
    ~Connection();

    using bytes = std::vector<std::byte>;
    void send(bytes data);
    void sendMessage(const std::string& message);
    void sendInLoop(const std::string& message);
    void connectionEstablished();

    virtual void handleRead();
    virtual void handleWrite();
private:
    int _sockFd;
    Channel* _sockChannel;
    EventLoop* _loop;
    IConnectionCallback* _app;
    Buffer* _outBuffer;
};


#endif //CETTY_CONNECTION_H
