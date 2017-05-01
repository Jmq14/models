HOME="/home/ubuntu"
# Directory containing preprocessed DATA data.
DATA_DIR="${HOME}/data/html"

# Inception v3 checkpoint file.
INCEPTION_CHECKPOINT="${HOME}/data/pretrain/inception_v3.ckpt"

# Directory to save the model.
MODEL_DIR="${HOME}/data/doodle2code/modelv2.0"

# Build the model.
bazel build -c opt im2txt/...

# Run the training script.
bazel-bin/im2txt/train \
  --input_file_pattern="${DATA_DIR}/train-?????-of-00256" \
  --inception_checkpoint_file="${INCEPTION_CHECKPOINT}" \
  --train_dir="${MODEL_DIR}/train" \
  --train_inception=false \
  --number_of_steps=100000
