# installing-cuda-tsne
Exploring ways to automatically install CUDA TSNE

```bash
nvidia-docker build --file Dockerfile -t cuda_tsne_docker .
nvidia-docker run --tty --interactive --publish 13000:13000 cuda_tsne_docker
```