# WebGAL_Terre Docker 镜像

WebGAL_Terre 是一个视觉小说编辑器，旨在通过简单的界面和功能强大的编辑工具来帮助用户创建视觉小说项目。以下是如何在Docker容器中运行和部署 WebGAL_Terre 项目的介绍。

## 获取镜像

你可以从 Docker Hub 上获取 WebGAL_Terre 镜像：

```bash
docker pull openwebgal/webgal_terre:latest
```
## 运行容器
使用以下命令运行 WebGAL_Terre 容器：
```bash
docker run -p 3001:3001 -v /your/local/path:/app/public/games openwebgal/webgal_terre:latest
-p 3001:3001
-v /your/local/path:/workspace
-v /your/local/path:/export
```
## 访问 WebGAL_Terre
一旦容器成功运行，你可以通过浏览器访问 WebGAL_Terre：
http://localhost:3001

## GitHub 仓库
WebGAL_Terre 的官方 GitHub 仓库地址： https://github.com/OpenWebGAL/WebGAL_Terre

## 注意事项
请确保宿主机的端口3001没有被其他应用程序占用。
如果需要更多高级配置，请参考项目的 GitHub 页面 以获取详细信息。
感谢使用 WebGAL_Terre Docker 镜像！如有问题或建议，请在项目的 GitHub 仓库中提交 Issue。

请根据你的实际需求调整路径和其他配置。希望这能帮助你正确运行和部署 WebGAL_Terre 项目。





