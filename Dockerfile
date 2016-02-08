FROM ubuntu
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN apt-get update && \
    apt-get install -y wget lib32z1 lib32ncurses5 lib32bz2-1.0 bzip2 && \
    wget -O /quicklisp.lisp https://beta.quicklisp.org/quicklisp.lisp && \
    wget http://common-lisp.net/project/cmucl/downloads/release/20d/cmucl-20d-x86-linux.tar.bz2 && \
    tar -C /usr/local -xjvf cmucl-20d-x86-linux.tar.bz2 && \
    lisp -load /quicklisp.lisp -eval "(quicklisp-quickstart:install)"
COPY .cmucl-init.lisp /root/.cmucl-init.lisp
