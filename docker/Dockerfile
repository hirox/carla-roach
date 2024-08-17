FROM nvcr.io/nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

RUN sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list

RUN apt update && \
    apt install -y \
    wget \
    vim \
    git \
    pigz \
    sudo \
    # for carla
    xdg-user-dirs \
    libsdl2-2.0 \
    libvulkan1 \
    # for vulkan
    libgl1 \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# INSTALL MINICONDA
WORKDIR /opt
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda3 && \
    rm -r Miniconda3-latest-Linux-x86_64.sh
ENV PATH=/opt/miniconda3/bin:$PATH
RUN pip install --no-cache-dir --upgrade pip && conda update -n base -c defaults conda && \
    conda clean -afy && \
    conda init

RUN echo 'ALL ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/01_nopasswd

COPY container/init.sh /tmp/.init.sh
RUN chmod +x /tmp/.init.sh

# Create /etc/profile.d/load-setuprc.sh if it doesn't exist, to source /app/.setuprc
RUN if [ ! -f /etc/profile.d/load-setuprc.sh ]; then \
    echo '. /app/.setuprc' > /etc/profile.d/load-setuprc.sh; \
    fi

WORKDIR /app

CMD ["/tmp/.init.sh"]
