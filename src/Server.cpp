//
// Created by BIN HE on 15/5/22.
//

#include "Server.h"
#include "Connection.h"

Server::Server(EventLoop *loop, IConnectionCallback *callback):
_acceptor(nullptr),
_loop(loop),
_callback(callback){}

Server::~Server() {}

void Server::start(int port) {
    _acceptor = new Acceptor(_loop, port, this);
    _acceptor->start();
}

void Server::handleNewConnection(int sockFd) {
    Connection* connection = new Connection(sockFd, _loop, _callback);
    _connections[sockFd] = connection;
    connection->connectionEstablished();
}