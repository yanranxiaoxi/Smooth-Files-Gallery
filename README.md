# Smooth Files Gallery

⭐ 以最省心的方式搭建文件共享库 ⭐

[![jsDelivr](https://data.jsdelivr.com/v1/package/npm/smooth-files-gallery/badge?style=rounded)](https://www.jsdelivr.com/package/npm/smooth-files-gallery)

## ✨ 特性

- 1️⃣ 单个文件，只需将它放入服务器上的任何目录中
- 🔎 实时搜索和排序文件
- 📃 可实时切换的高级列表和库布局
- 🗺️ 预览照片的 IPTC、EXIF 和 GPS 地图
- ☁️ 使用缓存机制和 CDN 快速加载
- 🌲 高级递归导航显示整个目录结构
- ✒️ 出色的代码高亮，用于查看和编辑代码格式
- 🔐 登录以保护目录访问
- 🔤 多语言界面支持，自动检测浏览器语言
- 📝 在线上传、下载、编辑文件
- 📁 压缩文件夹打包下载（Zip）
- 🌎️ 全景图预览
- 🛠 更多特性开发中

## ✔️ 要求

- PHP 5.5 或更高版本
- PHP 插件
  - 启用 PHP [GD](https://www.php.net/manual/book.image.php) 拓展以调整图像大小
  - 启用 PHP [EXIF](https://www.php.net/manual/book.exif.php) 拓展以读取图像数据
  - PHP `iptcparse()` 读取图像 IPTC 元数据
  - PHP `ZipArchive` 用于在下载文件夹中的所有文件时压缩存档
  - PHP `mime_content_type()` 或 `finfo_file()` 来获取服务器上的文件 MIME 类型（安全性）
  - PHP `exif_imagetype()` 来验证上传的图像（安全性）
  - PHP `session_start()` 并正确配置了 `session_save_path` 登录机制
  - PHP `ini_get()` 和 `ini_set()` 用于各种功能
  - FFmpeg 命令行工具以及用于视频缩略图的 PHP `exec()`
  - 足够的 PHP `memory_limit` 来调整图像大小
  - PHP `file_uploads` 启用了上传机制
  - PHP `upload_max_filesize` 与最大文件上传大小匹配
  - PHP [mbstring](https://www.php.net/manual/book.mbstring.php)，用于包含具有多字节字符编码的元数据的图像
- 支持所有 **现代浏览器**（无法在 Internet Explorer 上运行）
- 虽然本应用是本地的单个文件，但它仍然需要 **互联网连接** 以从 CDN 加载 JavaScript 与 CSS

## ⚙️ 部署

1. 下载 [index.php](https://gitlab.soraharu.com/XiaoXi/Smooth-Files-Gallery/-/raw/master/index.php?inline=false) 并上传至服务器
2. 你已经完成了部署的所有步骤，现在即可开始使用 😆

## ⚙️ 容器部署

```bash
podman container run \
    --detach \
    --name=files-gallery \
    --quiet \
    --replace \
    --restart=always \
    --tls-verify \
    --volume=/dir/files-gallery/config/:/var/www/html/_files/config/ \
    --volume=/dir/files-gallery/plugins/:/var/www/html/_files/plugins/ \
    --volume=/dir/files-gallery/files/:/var/www/files/ \
    --volume=/dir/files-gallery/cache/:/var/www/html/_files/cache/ \
    docker.io/yanranxiaoxi/smooth-files-gallery:latest
```

请为 `/dir/files-gallery/config/` 和 `/dir/files-gallery/cache/` 目录赋予写入权限。如若希望使用文件上传功能，则 `/dir/files-gallery/files/` 目录也需要写入权限。

## 📜 开源许可

本项目支持个人及非商业社会团体免费使用所有功能（不可删除授权窗口）。

个人（支持个人商用）及非商业社会团体可支付 **[$2.99]** 获取永久使用授权。

商业用途企业需支付 **[$79]** 以获取永久使用授权。

用于开源项目及公益组织可使用以下授权码：

```
F1-3DOE-FKI4-JMQM-JHUT-1SVV-G0J1
```

该授权码并非永久可用，建议发送邮件请求获取免费的专属使用授权。

基于 [MIT License](https://choosealicense.com/licenses/mit/) 许可进行开源。但包含附加条件，未获取永久使用授权的个人、团体 **不属于** 许可的开源对象。
