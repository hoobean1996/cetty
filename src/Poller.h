//
// Created by BIN HE on 15/5/22.
//

#ifndef CETTY_POLLER_H
#define CETTY_POLLER_H

#include <sys/epoll.h>
#include <iostream>
#include <vector>

#include "Channel.h"

class Channel;
class Poller {
public:
    Poller();

    ~Poller();

    void poll(std::vector<Channel *> *channels);

    void update(Channel *channel);

private:
    static const int _MAX_EVENTS = 1024;
    int _epollFd;
    struct epoll_event _events[_MAX_EVENTS];
};


#endif //CETTY_POLLER_H
