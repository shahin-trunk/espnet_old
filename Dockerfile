FROM nvcr.io/nvidia/cuda:11.1-cudnn8-runtime-ubuntu18.04
RUN apt-get update -y && apt-get install cmake libsndfile1-dev sox ffmpeg flac
RUN git clone https://github.com/kaldi-asr/kaldi && cd kaldi/tools && make -j 24
