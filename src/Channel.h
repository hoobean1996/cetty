//
// Created by BIN HE on 15/5/22.
//

#ifndef CETTY_CHANNEL_H
#define CETTY_CHANNEL_H

#include "EventLoop.h"

const int kNew = -1;
const int kAdded = 1;

class IChannelCallback {
public:
    virtual void handleRead() = 0;

    virtual void handleWrite() = 0;
};

class EventLoop;
class Channel {
public:
    Channel();
    Channel(EventLoop *loop, int fd, IChannelCallback* callback);

    ~Channel();

    void setRevents(int revents);

    void setFlag(int flag);

    void handleEvent();

    void enableReading();

    void enableWriting();

    void disableWriting();

    bool isWriting();

    int getEvents();

    int getFd();

    int getFlag();

private:
    int _fd;
    int _events;
    int _revents;
    int _flag;
    IChannelCallback *_callback;
    EventLoop *_loop;

    void update();
};

#endif //CETTY_CHANNEL_H
