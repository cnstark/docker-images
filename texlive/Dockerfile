FROM debian:buster
  
ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
    apt-get install -f -y --no-install-recommends ca-certificates curl fontconfig make perl zip &&\
    update-ca-certificates &&\
    apt-get clean -y &&\
    rm -rf /var/lib/apt/lists/*

COPY texlive.profile /tmp/

ARG SCHEME

RUN mkdir -p /tmp/install-texlive && \
    curl -sSL "http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz" \
        | tar -xz -C /tmp/install-texlive --strip-components=1 && \
    /tmp/install-texlive/install-tl -no-gui -scheme ${SCHEME} \
        -profile /tmp/texlive.profile \
        -repository http://mirror.ctan.org/systems/texlive/tlnet && \
    rm -rf /tmp/install-texlive

ENV PATH="/opt/texlive/bin/x86_64-linux:${PATH}"
