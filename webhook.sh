
# ! /bin/bash
# 确保脚本抛出遇到的错误
set -e

git reset --hard origin/master
git clean -f
git pull
git checkout master
