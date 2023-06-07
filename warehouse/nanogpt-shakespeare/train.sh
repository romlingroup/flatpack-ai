#!/bin/sh

OS=$(uname)
if [ "$OS" = "Darwin" ]; then
  WORK_DIR="nanoGPT"
  DEVICE="mps"
else
  WORK_DIR="/home/content/nanoGPT"
  DEVICE="cpu"
fi

cd "$WORK_DIR" || exit

python train.py config/train_shakespeare_char.py --device=$DEVICE --compile=False
