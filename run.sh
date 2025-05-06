#!/bin/bash

export CUDA_VISIBLE_DEVICES=0
llamafactory-cli train examples/train_lora/qwen2vl_lora_sft.yaml
llamafactory-cli export examples/merge_lora/qwen2vl_lora_sft.yaml
cd output
huggingface-cli upload qwen2_vl_lora_sft
