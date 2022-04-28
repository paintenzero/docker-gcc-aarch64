FROM ubuntu:bionic

RUN apt update &&\
    apt install -y --no-install-recommends \
    wget \
    libssl-dev \
    bc \
    kmod \
    u-boot-tools \
    texinfo \
    flex \
    bison \
    unzip \
    libtool-bin \
    xz-utils \
    file \
    help2man \
    libncurses-dev \
    gawk \
    gcc \
    g++ \
    make \
    patch \
    git \
    gcc-7-aarch64-linux-gnu \
    g++-7-aarch64-linux-gnu \
    python3 python3-dev python3-distutils python3-setuptools swig
RUN update-alternatives --install /usr/bin/aarch64-linux-gnu-cpp aarch64-linux-gnu-cpp /usr/bin/aarch64-linux-gnu-g++-7 70 &&\
    update-alternatives --install /usr/bin/aarch64-linux-gnu-gcc aarch64-linux-gnu-gcc /usr/bin/aarch64-linux-gnu-gcc-7 70 &&\
    update-alternatives --install /usr/bin/aarch64-linux-gnu-g++ aarch64-linux-gnu-g++ /usr/bin/aarch64-linux-gnu-g++-7 70 &&\
    update-alternatives --install /usr/bin/aarch64-linux-gnu-gcc-ranlib aarch64-linux-gnu-gcc-ranlib /usr/bin/aarch64-linux-gnu-gcc-ranlib-7 70  &&\
    update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov aarch64-linux-gnu-gcov /usr/bin/aarch64-linux-gnu-gcov-7 70  &&\
    update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov-dump aarch64-linux-gnu-gcov-dump /usr/bin/aarch64-linux-gnu-gcov-dump-7 70  &&\
    update-alternatives --install /usr/bin/aarch64-linux-gnu-gcov-tool aarch64-linux-gnu-gcov-tool /usr/bin/aarch64-linux-gnu-gcov-tool-7 70

RUN apt-get clean &&\
    rm -rf /var/lib/apt/lists/*

ENV CROSS_COMPILE=aarch64-linux-gnu-
ENV CXX=${CROSS_COMPILE}g++
ENV CC=${CROSS_COMPILE}gcc