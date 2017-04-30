HOME="/home/ubuntu"
MSCOCO_DIR="${HOME}/data/html"

# Build the preprocessing script.
bazel build im2txt/preprocess_html

# Run the preprocessing script.
bazel-bin/im2txt/preprocess_html ${MSCOCO_DIR} 
