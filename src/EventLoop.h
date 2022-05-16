//
// Created by BIN HE on 15/5/22.
//

#ifndef CETTY_EVENTLOOP_H
#define CETTY_EVENTLOOP_H

#include "Poller.h"
#include "Channel.h"

class Channel;
class Poller;
class EventLoop {
public:
    EventLoop();

    ~EventLoop();

    void loop();

    void update(Channel *channel);

private:
    bool _running;
    Poller *_poller;
};


#endif //CETTY_EVENTLOOP_H
