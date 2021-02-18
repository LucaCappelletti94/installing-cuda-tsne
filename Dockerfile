FROM nvidia/cuda:10.1-cudnn7-devel
EXPOSE 13000/tcp
WORKDIR /home
COPY . .
RUN apt-get update -qyy && apt-get install libopenblas-dev git htop byobu doxygen python3-dev python3-pip libasound2-dev build-essential curl wget tmux byobu htop -qyy -qyy
RUN apt remove cmake
RUN python3 -m pip install cmake --upgrade
RUN bash ./install_cuda_tsne.sh