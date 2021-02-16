#!/bin/bash
git clone https://github.com/rmrao/tsne-cuda.git && cd tsne-cuda
git submodule init
git submodule update
cd build/
cmake ..