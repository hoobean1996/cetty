//
// Created by BIN HE on 15/5/22.
//
#include <glog/logging.h>

#include "Channel.h"

Channel::Channel() {}
Channel::Channel(EventLoop *loop, int fd, IChannelCallback* callback) :
        _fd(fd),
        _events(0),
        _revents(0),
        _flag(kNew),
        _callback(callback),
        _loop(loop) {
    LOG(ERROR) << "create Channel successfully, fd=" << fd;
}

Channel::~Channel() {}

void Channel::setRevents(int revents) {
    _revents = revents;
}

void Channel::setFlag(int flag) {
    _flag = flag;
}

void Channel::handleEvent() {
    if (_revents & EPOLLIN) _callback->handleRead();
    if (_revents & EPOLLOUT) _callback->handleWrite();
}

void Channel::update() {
    _loop->update(this);
}

void Channel::enableReading() {
    _events |= EPOLLIN;
    update();
    LOG(ERROR) << "fd=" << _fd << " Channel:enableReading";
}

void Channel::enableWriting() {
    _events |= EPOLLOUT;
    update();
}

void Channel::disableWriting() {
    _events &= ~EPOLLOUT;
    update();
}

bool Channel::isWriting() {
    return _events & EPOLLOUT;
}

int Channel::getEvents() {
    return _events;
}

int Channel::getFd() {
    return _fd;
}

int Channel::getFlag() {
    return _flag;
}
