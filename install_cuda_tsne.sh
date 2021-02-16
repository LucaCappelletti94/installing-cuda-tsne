#!/bin/bash
apt remove cmake
pip install cmake --upgrade
bash
git clone https://github.com/rmrao/tsne-cuda.git && cd tsne-cuda
git submodule init
git submodule update
cd build/
cmake ..