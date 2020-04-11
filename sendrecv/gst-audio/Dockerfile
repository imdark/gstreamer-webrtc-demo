FROM phusion/baseimage:0.11 as src
  
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt-get install --no-install-recommends -y \
    autoconf \
    autopoint \
    bison \
    cmake \
    flex \
    g++ \
    gdb \
    git \
    gpgv \
    gstreamer1.0-nice \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-tools \
    gstreamer1.0-vaapi \
    gtk-doc-tools \
    iputils-ping \
    libbz2-1.0 \
    libbz2-dev \
    libbz2-ocaml \
    libbz2-ocaml-dev \
    libcurl4-openssl-dev \
    libglib2.0-dev \
    libgstreamer-plugins-bad1.0-dev \
    libgstreamer-plugins-base1.0-dev \
    libgstreamer1.0-dev \
    libjpeg-dev \
    libjson-glib-dev \
    libpulse-dev \
    libsoup2.4 \
    libsoup2.4-dev \
    libssl-dev \
    libtool \
    net-tools \
    nginx \
    python3 \
    python3-dev \
    python3-pip \
    python3-setuptools \
    tcpdump \
    v4l2loopback-dkms \
    v4l2loopback-utils \
    vim \
    gstreamer1.0-libav


#RUN apt-get upgrade -y
#RUN apt-get update
RUN apt-get install -y libjson-glib-dev
# RUN apk update
# RUN apk add json-glib-dev libsoup-dev

WORKDIR /opt/
COPY . /opt/

RUN make

CMD echo "Waiting a few seconds for you to open the browser at localhost:8080" \
    && sleep 10 \
    && ./webrtc-sendrecv \
    --peer-id=1 \
    --server=ws://signalling:8443 \
    --disable-ssl

