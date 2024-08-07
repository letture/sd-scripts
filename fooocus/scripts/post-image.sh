#! /bin/bash

source_dir="/root/zscloud-tmp/models"
target_dir="/root/Fooocus/models"

rm $target_dir/checkpoints
rm $target_dir/loras
mkdir $target_dir/checkpoints
mkdir $target_dir/loras

cp $source_dir/checkpoint/sd_xl_base_1.0_0.9vae.safetensors $target_dir/checkpoints
cp $source_dir/checkpoint/sd_xl_refiner_1.0_0.9vae.safetensors $target_dir/checkpoints
cp $source_dir/loras/sd_xl_offset_example-lora_1.0.safetensors $target_dir/loras
