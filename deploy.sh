hugo --theme=hugo-theme-stack --baseUrl=https://tauzi.github.io/myblog/ --buildDrafts

cd public

git init #初始化git

git add -A

git commit -m 'deploy123'

git push -f git@github.com:Tauzi/myblog.git master:gh-pages    #向存储库推送
