FROM yutakakinjyo/gtest

MAINTAINER Yutaka Kinjo <yutakakinjyo@gmail.com>

ENV PROJECT /project

RUN mkdir $PROJECT
WORKDIR $PROJECT

ADD . $PROJECT

RUN mkdir build; \
    cd build; \
    cmake -Dtest=ON ..;\
    make