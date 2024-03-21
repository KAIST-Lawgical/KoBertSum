FROM nvcr.io/nvidia/pytorch:19.06-py3
EXPOSE 6006 6007 6008 6009
RUN apt update && \
apt install -y \
    libxml2-dev \ 
    libxslt-dev \
    python3-dev \
    tmux \
    htop \
    ncdu \
    vim \
    && \
apt clean && \
apt autoremove && \
rm -rf /var/lib/apt/lists/* /tmp/* && \
mkdir /kobertsum
COPY . /kobertsum/
RUN cd /kobertsum
WORKDIR /kobertsum