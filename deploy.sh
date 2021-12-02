# 确保脚本抛出遇到的错误
set -e

git config --local user.name Melonvin
git config --local user.email 1176891456@qq.com

if command -v ./hugo --theme=showcase; then
  ./hugo --theme=showcase
else 
  hugo --theme=showcase
fi

cd public

git init 
git add .
git commit -m 'deploy'
git push -f git@github.com:Melonvin/Melonvin.github.io.git master

cd ..

rm -rf public