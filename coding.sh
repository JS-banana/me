#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

echo '部署到coding====>开始...'

# date
nowDate=$(date "+%Y-%m-%d %H:%M:%S")

# 进入生成的文件夹
cd ./.deploy_git

# var
GH_REF="e.coding.net/ssscode/blog/hexo.git"
nowDate=$(date "+%Y-%m-%d %H:%M:%S")

echo 'me.ssscode.com' > CNAME  # 自定义域名

git init
git add -A
git commit -m "coding.sh===>update：${nowDate}"
git push -f "https://ptzv1yuleer1:${CODING_TOKEN}@${GH_REF}" master:gh-pages # 推送到 coding 

cd - # 退回开始所在目录
rm -rf .deploy_git

echo '部署到coding====>完成'