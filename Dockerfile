FROM frolvlad/alpine-gcc

RUN apk add --update wget
RUN cd /tmp && \
    wget --no-check-certificate https://github.com/supermina999/brainfuck/archive/master.zip && \
    unzip master.zip && \
    cd brainfuck-master && \
    g++ -O2 brainfuck.cpp -o brainfuck && mv brainfuck /usr/bin/
