#FROM nvidia/cuda:10.1-cudnn6-devel
FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python2.7 \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    python-pip \
    libopencv-dev

RUN apt-get install -y vim wget git

RUN pip install \
    setuptools && \
    pip install \
    numpy==1.16.2 \
    flask==1.0.2 \
    gevent==1.4.0 \
    progressbar \
    opencv-python \
    tensorflow==1.13.1

RUN pip install  google_images_download

WORKDIR /root
RUN git clone https://github.com/pjreddie/darknet
WORKDIR /root/darknet
RUN wget -P weight https://pjreddie.com/media/files/darknet.weights
RUN wget -P weight https://pjreddie.com/media/files/darknet.weights
