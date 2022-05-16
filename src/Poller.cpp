//
// Created by BIN HE on 15/5/22.
//

#include <sys/epoll.h>
#include <iostream>
#include <vector>

#include <glog/logging.h>

#include "Poller.h"

Poller::Poller() {
    _epollFd = ::epoll_create(1);
    if (_epollFd <= 0) {
        LOG(ERROR) << "create Poller failed";
    } else {
        LOG(ERROR) << "create Poller successfully";
    }
}

Poller::~Poller() {}

void Poller::poll(std::vector<Channel *> *channels) {
    int fds = ::epoll_wait(_epollFd, _events, _MAX_EVENTS, -1);
    if (fds == -1) {
        LOG(ERROR) << "[epoll_wait] failed";
        return;
    }
    LOG(ERROR) << "[epoll_wait] fds=" << fds;

    for (int i = 0; i < fds; i++) {
        Channel *channel = static_cast<Channel *>(_events[i].data.ptr);
        channel->setRevents(_events[i].events);
        channels->push_back(channel);
    }
}

void Poller::update(Channel *channel) {
    int flag = channel->getFlag();
    if (flag == kNew) {
        struct epoll_event ev;
        ev.data.ptr = channel;
        ev.events = channel->getEvents();
        int fd = channel->getFd();
        channel->setFlag(kAdded);
        ::epoll_ctl(_epollFd, EPOLL_CTL_ADD, fd, &ev);
    }
    else {
        struct epoll_event ev;
        ev.data.ptr = channel;
        ev.events = channel->getEvents();
        int fd = channel->getFd();
        ::epoll_ctl(_epollFd, EPOLL_CTL_MOD, fd, &ev);
    }
}