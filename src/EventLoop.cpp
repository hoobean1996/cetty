//
// Created by BIN HE on 15/5/22.
//
#include <vector>

#include <glog/logging.h>

#include "EventLoop.h"

EventLoop::EventLoop() :
        _running(true),
        _poller(new Poller()) {
    LOG(ERROR) << "create EventLoop successfully";
}

EventLoop::~EventLoop() {}

void EventLoop::loop() {
    while (_running) {
        LOG(ERROR) << "[EventLoop::loop] polling incoming events";
        std::vector <Channel *> channels;
        _poller->poll(&channels);

        LOG(ERROR) << "[EventLoop::loop] poll events successfully";
        for(auto it=channels.begin(); it!=channels.end(); it++) {
            (*it)->handleEvent();
        }
    }
}

void EventLoop::update(Channel *channel) {
    _poller->update(channel);
}