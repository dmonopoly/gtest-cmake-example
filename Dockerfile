FROM yutakakinjyo/gtest

MAINTAINER Yutaka Kinjo <yutakakinjyo@gmail.com>

ENV PROJECT /project

RUN mkdir $PROJECT
WORKDIR $PROJECT

ADD . $PROJECT

RUN cmake -P build.cmake