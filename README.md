# installing-cuda-tsne
Exploring ways to automatically install CUDA TSNE

```bash
docker build --file Dockerfile -t cuda_tsne_docker .
docker run --tty --interactive --publish 8888:8888 cuda_tsne_docker
```