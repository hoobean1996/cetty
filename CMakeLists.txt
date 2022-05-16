cmake_minimum_required(VERSION 3.20)
project(cetty)

set(CMAKE_CXX_STANDARD 17)

find_package(glog 0.6.0 REQUIRED)

add_library(cetty main.cpp
        src/EventLoop.h src/EventLoop.cpp
        src/Poller.h src/Poller.cpp
        src/Channel.cpp src/Channel.h src/Acceptor.cpp src/Acceptor.h src/Connection.cpp src/Connection.h src/Buffer.cpp src/Buffer.h src/Server.cpp src/Server.h)

add_executable(cettyapp main.cpp)

target_link_libraries(cettyapp cetty glog::glog)