#!/bin/bash
image="espnet/espnet:gpu-cuda10.0-cudnn7-u18"
vols="-v ${PWD}/egs:/espnet/egs
      -v ${PWD}/espnet:/espnet/espnet
      -v ${PWD}/espnet2:/espnet/espnet2
      -v ${PWD}/test:/espnet/test
      -v ${PWD}/utils:/espnet/utils"

docker run --gpus '"device=4,5,6,7"' -it $vols $image