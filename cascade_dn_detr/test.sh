#!/bin/bash

dataset_file=$1
num_gpus=$2
checkpoint_path=$3

python -m torch.distributed.launch --nproc_per_node $num_gpus main.py \
        -m cascade_dn_detr        \
        --dataset_file $dataset_file      \
        --output_dir work_dir/cascade_dn_detr/$dataset_file     \
        --batch_size 1  \
        --epochs 12     \
        --lr_drop 10    \
        --transformer_activation relu   \
        --data_path data/$dataset_file   \
        --num_workers 4 \
        --use_dn        \
        --cascade_attn      \
        --save_checkpoint_interval 10   \
        --eval  \
        --resume $checkpoint_path       \
