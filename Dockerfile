FROM ubuntu:22.04

ARG BR_VERSION=2022.05.1

RUN apt-get update && apt-get install -y --no-install-recommends \
    sed make binutils build-essential gcc g++ bash patch gzip bzip2 \
    perl tar cpio unzip rsync bc wget python3 libncurses5 git \
    subversion coreutils file libncurses-dev curl ca-certificates

RUN useradd -ms /bin/bash br-user
USER br-user
WORKDIR /home/br-user

RUN git clone https://github.com/buildroot/buildroot.git && \
    cd buildroot && \
    git checkout $BR_VERSION

VOLUME ["/home/br-user/buildroot/dl", "/home/br-user/buildroot/output"]

ENTRYPOINT ["/bin/bash"]
