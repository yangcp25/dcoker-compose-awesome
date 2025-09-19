#!/bin/bash

# === Configuration ===
# 1. 要导出的镜像，例如 "ubuntu:22.04" 或 "almalinux:8"
IMAGE_TO_EXPORT="rustdesk/rustdesk-server:latest"

# 2. 目标平台架构, 例如 "linux/amd64", "linux/arm64", "linux/s390x"
TARGET_PLATFORM="linux/amd64"

# 3. 输出的 .tar 文件名
OUTPUT_FILENAME="rustdesk.tar"
# === End of Configuration ===


# --- Script Logic ---
# 使用 set -e 确保任何命令失败时脚本都会立即退出
set -e

echo "准备导出镜像: $IMAGE_TO_EXPORT"
echo "目标平台: $TARGET_PLATFORM"
echo "输出文件: $OUTPUT_FILENAME"
echo "---"

# 1. 创建一个临时的 Dockerfile 用于 buildx
TMP_DOCKERFILE="Dockerfile.export.tmp"
echo "FROM $IMAGE_TO_EXPORT" > "$TMP_DOCKERFILE"

# 2. 设置一个陷阱(trap)，确保在脚本退出时（无论成功还是失败）都删除临时文件
trap 'rm -f "$TMP_DOCKERFILE"' EXIT

# 3. 使用 docker buildx 构建并直接导出为 tar 包
echo "正在使用 buildx 构建并导出，请稍候..."
docker buildx build \
  --platform "$TARGET_PLATFORM" \
  -f "$TMP_DOCKERFILE" \
  -o "type=docker,dest=$OUTPUT_FILENAME" \
  .

echo "---"
echo "✅ 成功！"
echo "镜像已成功导出到: $OUTPUT_FILENAME"