#!/bin/bash
git clone https://github.com/rmrao/tsne-cuda.git && cd tsne-cuda
git submodule init
git submodule update
cd build/
cmake ..
make -j$(nproc --all)
make
cd python
python3 -m pip install -e .