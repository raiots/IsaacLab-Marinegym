#!/bin/bash

# 设置 MarineGym 仓库地址（请替换为实际的仓库地址）
REPO_URL="git@github.com:MarineRL/MarineGym.git"

# 创建并进入工作目录
cd /workspace

# 如果目录存在，删除它
if [ -d "MarineGym" ]; then
    rm -rf MarineGym
fi

# 克隆最新的代码库
git clone ${REPO_URL}

# 安装 MarineGym
pip install -e /workspace/MarineGym

# 进入脚本目录
cd /workspace/MarineGym/scripts

# 运行主程序
python main.py

# 执行传入的其他命令（保留原有功能）
exec "$@"
