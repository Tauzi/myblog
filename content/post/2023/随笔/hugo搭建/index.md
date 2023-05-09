---
title: hugo搭建
description: 我的搭建历程
date: 2023-05-09
slug: suibi
image: 1.jpg
categories:
    - 随笔
tags: ["blog"]
---
## 安装hugo
1.从hugo官方github仓库下载hugo,记得必须使用带有`extended`的版本

> hugo官方下载地址: [https://github.com/gohugoio/hugo/releases](https://github.com/gohugoio/hugo/releases)

2.在任意盘下创建文件夹名为`hugo`,进入`hugo`文件夹下并创建名为`bin`的文件夹,将下载下来的zip文件解压到`bin`里面

> 完整的路径即为: e:\\hugo\\bin

3.接下来设置hugo环境变量,依次打开设置,然后选择系统,滑到下面选择系统信息,打开高级系统设置,打开环境变量
如图
![image8d71a668919b47d3.png](https://img.picgo.net/2023/05/09/image8d71a668919b47d3.png)

4.检查一下hugo是否安装成功,打开cmd或终端输入hugo version,如果输出一下内容则证明配置成功

## 初始化博客
在桌面右键,选择在终端打开,然后输入以下命令
```
hugo new site blog
```
然后桌面会出现一个名为blog的文件夹,可以用VScode打开文件夹并打开终端进行后续操作

### 🎈hugo-theme-stack安装
 
1.  删掉默认的配置文件`config.toml`
    
      
    
2.  打开终端输入以下命令
    

    
    ```
    git init #获取主题文件 
    git submodule add https://github.com/CaiJimmy/hugo-theme-stack/ themes/hugo-theme-stack
    ```
    

    
3.  将获取到的主题文件中的`exampleSite`中的`config.yaml`拷贝到`blog`根目录中
    
    并进行配置,根据自己需要进行配置,这里我贴出自己的配置图共参考
```
baseurl: myblog
languageCode: zh-cn
theme: hugo-theme-stack
paginate: 5
title: TauZZ's Blog
languages:
    # en:
    #     languageName: English
    #     title: Example Site
    #     description: Example description
    #     weight: 1
    zh-cn:
        languageName: 中文
        title: TauZZ's Blog
        description: 👋Welcome To TauZZ's Blog
        weight: 1
    # ar:
    #     languageName: عربي
    #     languagedirection: rtl
    #     title: موقع تجريبي
    #     description: وصف تجريبي
    #     weight: 3

# Change it to your Disqus shortname before using
disqusShortname: hugo-theme-stack

# GA Tracking ID
googleAnalytics:

# Theme i18n support
# Available values: ar, bn, ca, de, el, en, es, fr, hu, id, it, ja, ko, nl, pt-br, th, uk, zh-cn, zh-hk, zh-tw
DefaultContentLanguage: zh-cn

# Set hasCJKLanguage to true if DefaultContentLanguage is in [zh-cn ja ko]
# This will make .Summary and .WordCount behave correctly for CJK languages.
hasCJKLanguage: false

permalinks:
    post: /p/:slug/
    page: /:slug/

params:
    mainSections:
        - post
    featuredImageField: image
    rssFullContent: true
    favicon: img/favicon.ico # e.g.: favicon placed in `static/favicon.ico` of your site folder, then set this field to `/favicon.ico` (`/` is necessary)

    footer:
        since: 2020
        customText:

    dateFormat:
        published: Jan 02, 2006
        lastUpdated: Jan 02, 2006 15:04 MST

    sidebar:
        emoji: 🍥
        subtitle: 加油努力.✍️
        avatar:
            enabled: true
            local: true
            src: img/avatar.png

    article:
        math: false
        toc: true
        readingTime: true
        license:
            enabled: true
            default: Licensed under CC BY-NC-SA 4.0

    comments:
        enabled: true
        provider: waline

        disqusjs:
            shortname:
            apiUrl:
            apiKey:
            admin:
            adminLabel:

        utterances:
            repo:
            issueTerm: pathname
            label:

        remark42:
            host:
            site:
            locale:

        vssue:
            platform:
            owner:
            repo:
            clientId:
            clientSecret:
            autoCreateIssue: false

        # Waline client configuration see: https://waline.js.org/en/reference/component.html
        waline:
            serverURL:
            lang:
            pageview:
            emoji:
                - https://cdn.jsdelivr.net/npm/sticker-heo@2022.7.5/Sticker-100/
            requiredMeta:
                - name
                - email
            locale:
                admin: 👻屑博主
                placeholder: 🎉留下你的脚印.

        twikoo:
            envId:
            region:
            path:
            lang:

        # See https://cactus.chat/docs/reference/web-client/#configuration for description of the various options
        cactus:
            defaultHomeserverUrl: "https://matrix.cactus.chat:8448"
            serverName: "cactus.chat"
            siteName: "" # You must insert a unique identifier here matching the one you registered (See https://cactus.chat/docs/getting-started/quick-start/#register-your-site)

        giscus:
            repo:
            repoID:
            category:
            categoryID:
            mapping:
            lightTheme:
            darkTheme:
            reactionsEnabled: 1
            emitMetadata: 0

        gitalk:
            owner:
            admin:
            repo:
            clientID:
            clientSecret:

        cusdis:
            host:
            id:
    widgets:
        homepage:
            - type: search
            - type: archives
              params:
                  limit: 5
            - type: categories
              params:
                  limit: 10
            - type: tag-cloud
              params:
                  limit: 10
        page:
            - type: toc

    opengraph:
        twitter:
            # Your Twitter username
            site:

            # Available values: summary, summary_large_image
            card: summary_large_image

    defaultImage:
        opengraph:
            enabled: false
            local: false
            src:

    colorScheme:
        # Display toggle
        toggle: true

        # Available values: auto, light, dark
        default: light

    imageProcessing:
        cover:
            enabled: true
        content:
            enabled: true

### Custom menu
### See https://docs.stack.jimmycai.com/configuration/custom-menu.html
### To remove about, archive and search page menu item, remove `menu` field from their FrontMatter
menu:
    main: []

    social:
        - identifier: github
          name: GitHub
          url: https://github.com/Tauzi
          params:
              icon: brand-github
        - identifier: weixin
          name: Dreamq0p
          params:
              icon: wx
    

related:
    includeNewer: true
    threshold: 60
    toLower: false
    indices:
        - name: tags
          weight: 100

        - name: categories
          weight: 200

markup:
    goldmark:
        renderer:
            ## Set to true if you have HTML content inside Markdown
            unsafe: false
    tableOfContents:
        endLevel: 4
        ordered: true
        startLevel: 2
    highlight:
        noClasses: false
        codeFences: true
        guessSyntax: true
        lineNoStart: 1
        lineNos: true
        lineNumbersInTable: true
        tabWidth: 4

```
    > 官方配置文档: [https://stack.jimmycai.com/config/](https://stack.jimmycai.com/config/)

### 🎈完成配置后
然后在自己的站点目录输入：`hugo server`

在浏览器输入：`localhost:1313` 得到以下页面：
![1683625436205e5bb962b2e4a9b87.png](https://img.picgo.net/2023/05/09/1683625436205e5bb962b2e4a9b87.png)

### 🎈开始创作
博客文章主要都存放在content中,这里可以参考一下我的content文件夹布局,例如我现在想要创建一篇文章,我们可以在blog根目录下打开终端输入`hugo new post/2022/XXXX.md`这条命令的意思是在conent/post/2023里创建一个名为XXXX.md的文件

* 文章格式例如
```
---
title: Chinese Test
description: 这是一个副标题
date: 2020-09-09
slug: test-chinese
image: helena-hertz-wWZzXlDpMog-unsplash.jpg
categories:
    - Test
    - 测试
tags: 
---

```
## Hugo博客配合Action部署到Github
* 创建仓库等步骤略过

### 🎈部署hugo博客
1.接下来我们在我们的博客根目录下创建一个名为.github的文件夹,然后在文件夹里新建一个新的文件夹,名字为workflows,接着进入workflows文件夹里新建一个名为deploy.xml的文件,再在deploy.xml里填入如下内容,最终目录为~\blog\.github\workflows\deploy.xml,将deploy.xml中的external_repository项里的lin-snow改为你GitHub注册时的名字即可

___deploy.xml___

```
name: GitHub Page

on:
    push:
        branches:
            - gh-pages # master 更新触发

jobs:
    deploy:
        runs-on: ubuntu-18.04
        steps:
            - uses: actions/checkout@v2
              with:
                  submodules: true # clone submodules
                  fetch-depth: 0 # 克隆所有历史信息

            - name: Setup Hugo
              uses: peaceiris/actions-hugo@v2
              with:
                  hugo-version: "0.111.3" # Hugo 版本
                  extended: true # hugo插件版 Stack主题 必须启用

            - name: Cache resources # 缓存 resource 文件加快生成速度
              uses: actions/cache@v2
              with:
                  path: resources
                  # 检查照片文件变化
                  key: ${{ runner.os }}-hugocache-${{ hashFiles('content/**/*') }}
                  restore-keys: ${{ runner.os }}-hugocache-

            - name: Build # 生成网页 删除无用 resource 文件 削减空行
              run: hugo --minify --gc

            - name: Deploy # 部署到 GitHub Page
              uses: peaceiris/actions-gh-pages@v3
              with:
                  # 如果在同一个仓库下使用请使用 github_token 并注释 deploy_key
                  # github_token: ${{ secrets.GITHUB_TOKEN }}
                  deploy_key: ${{ secrets.ACTIONS_DEPLOY_KEY }}

                  # 如果在同一个仓库请注释
                  external_repository: Tauzi/myblog # 你的 GitHub page 仓库 example/example.github.io

                  publish_dir: ./public
                  user_name: "github-actions[bot]"
                  user_email: "github-actions[bot]@users.noreply.github.com"
                  full_commit_message: Deploy from ${{ github.repository }}@${{ github.sha }} 🚀
                

```
2.然后在博客根目录文件夹下新建一个名为deploy.sh的文件用于一键部署博客,在deploy.sh中填入如下内容
```
hugo --theme=hugo-theme-stack --baseUrl=https://tauzi.github.io/myblog/ --buildDrafts

cd public

git init #初始化git

git add -A

git commit -m 'deploy123'

git push -f git@github.com:Tauzi/myblog.git master:gh-pages    #向存储库推送

```

**用git执行 bash deploy.sh 这样就可以把hugo生成的html文件推送到仓库gh-pages分支**


### 🎈开启Github Page
等待Github Action完成后,我们需要开启GitHub page,首先进入blog这个仓库,然后打开设置,找到page项,根据如下设置即可.
![image7a1a34437d8be44b.png](https://img.picgo.net/2023/05/09/image7a1a34437d8be44b.png)

等待完成构建后就可以访问了!