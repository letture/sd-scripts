#! /bin/bash

mkdir -p /root/zscloud-tmp/webui_outputs
mkdir -p /root/zscloud-tmp/webui_outputs/SadTalker
mkdir -p /root/zscloud-tmp/dreambooth
mkdir -p /root/zscloud-tmp/TensorRT/Unet-onnx
mkdir -p /root/zscloud-tmp/TensorRT/Unet-trt

echo "重启中，需要等待几秒……"

cd /root/stable-diffusion-webui/ && ./webui.sh -f --listen --port 6006 --enable-insecure-extension-access --api --xformers --opt-sdp-attention --no-half-vae --ckpt-dir /root/zscloud-tmp/models/checkpoint --embeddings-dir /root/zscloud-tmp/models/embeddings --lora-dir /root/zscloud-tmp/models/lora --vae-dir /root/zscloud-tmp/models/vae --controlnet-dir /root/zscloud-tmp/models/controlnet --controlnet-annotator-models-path /root/zscloud-tmp/models/controlnet_annotator --lyco-dir /root/zscloud-tmp/models/lycoris --ad-no-huggingface --skip-torch-cuda-test --skip-version-check --skip-python-version-check
