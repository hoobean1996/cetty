//
// Created by BIN HE on 15/5/22.
//
#include <glog/logging.h>

#include "src/EventLoop.h"
#include "src/Server.h"
#include "src/Connection.h"

class ConnServer: public IConnectionCallback {
public:
    virtual void onConnection(Connection* conn) {
        LOG(ERROR) << "onConnection";
    }
    virtual void onMessage(Connection* conn, Buffer* buffer) {
        LOG(ERROR) << "onMessage";
        conn->sendMessage("HTTP/1.1 200 OK/n/r");
    }
    virtual void onWriteComplete(Connection* conn) {
        LOG(ERROR) << "onWriteComplete";
    }
};


int
main(int argc, char *argv[]) {
    google::InitGoogleLogging(argv[0]);

    LOG(ERROR) << "Hello World";

    EventLoop loop;

    Server server(&loop, new ConnServer());
    server.start(8888);

    loop.loop();

    return 0;
}
