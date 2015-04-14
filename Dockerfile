FROM frolvlad/alpine-gcc

ADD brainfuck.cpp /tmp/

RUN cd /tmp && \
    g++ -O2 brainfuck.cpp -o brainfuck && mv brainfuck /usr/bin/
