FROM nvidia/cuda:10.1-cudnn7-devel

EXPOSE 8888/tcp
WORKDIR /home
COPY . .
RUN apt-get update -qyy && apt-get install htop byobu python3-dev libasound2-dev build-essential curl wget tmux byobu htop -qyy -qyy
RUN wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -O anaconda.sh | bash -b
RUN echo "export PATH=\$PATH:$HOME/anaconda3/bin" >> $HOME/.bashrc
RUN pip install ipywidgets && jupyter nbextension enable --py widgetsnbextension