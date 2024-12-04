#!/bin/bash

# Tạo URL đầy đủ với token
FULL_REPO_URL="https://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@github.com/hung319/a71-k.git"

# Nhập tên nhánh
read -p "Nhập tên nhánh (mặc định: main): " BRANCH
BRANCH=${BRANCH:-main} # Nếu không nhập, mặc định là main

# Nhập message commit
read -p "Nhập message commit (mặc định: Auto commit): " COMMIT_MSG
COMMIT_MSG=${COMMIT_MSG:-"Auto commit on $(date)"} # Nếu không nhập, dùng message mặc định

# Kiểm tra trạng thái Git
echo "Kiểm tra trạng thái git..."
git status

# Thêm file mới
echo "Thêm file mới vào staging..."
git add .

# Commit các thay đổi
echo "Commit các thay đổi..."
git commit -m "$COMMIT_MSG"

# Push code lên GitHub
echo "Push code lên GitHub..."
git push "$FULL_REPO_URL" "$BRANCH"

# Thông báo hoàn thành
echo "Code đã được push lên GitHub thành công!"