#!/usr/bin/env sh

# 该命令是在 hexo 部署之后才会执行，即github pages已被创建了

# 确保脚本抛出遇到的错误
set -e

echo '部署到coding====>开始...'

# date
nowDate=$(date "+%Y-%m-%d %H:%M:%S")

ls # 查看目录

# echo '1.查看内容是否存在====>./public/index.html'
# find ./public/index.html # 查看内容是否存在

# echo '2.查看内容是否存在====>./.deploy_git/index.html'
# find ./.deploy_git/index.html # 查看内容是否存在

# echo '文件查看结束=======>'

# 进入生成的文件夹
# cd ./.deploy_git
rm -rf .git
cd ./public
git init

# var
GH_REF="e.coding.net/ssscode/blog/hexo.git"
nowDate=$(date "+%Y-%m-%d %H:%M:%S")

# echo 'me.ssscode.com' > CNAME  # 自定义域名

git config --global user.name "JS-banana"
git config --global user.email "sss213018@163.com"

git add -A
git commit -m "coding.sh===>update：${nowDate}"
git push -f "https://ptzv1yuleer1:${CODING_TOKEN}@${GH_REF}" master:master # 推送到 coding 

cd - # 退回开始所在目录
# rm -rf .deploy_git

echo '部署到coding====>完成'