HOME="/home/ubuntu"
OUTPUT_DIR="${HOME}/data/html"
CURRENT_DIR="${HOME}/models/im2txt"
WORK_DIR="$0.runfiles/im2txt/im2txt"
TRAIN_IMAGE_DIR="${OUTPUT_DIR}/raw/train"
TRAIN_CAPTIONS_FILE="${OUTPUT_DIR}/train.json"

# Build TFRecords of the image data.
cd "${CURRENT_DIR}"
BUILD_SCRIPT="${WORK_DIR}/build_html_data"

"${BUILD_SCRIPT}" \
  --train_image_dir="${TRAIN_IMAGE_DIR}" \
  --train_captions_file="${TRAIN_CAPTIONS_FILE}" \
  --output_dir="${OUTPUT_DIR}" \
  --word_counts_output_file="${OUTPUT_DIR}/word_counts.txt" \
  --num_threads=8

