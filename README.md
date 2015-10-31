# docker-emqttd
Run emqttd with docker

# Step by step
初始化 Docker 环境
```
wget -qO- https://get.docker.com/ | sh
```
安装 Docker 可视化管理平台（可选，如果不安装就用命令行）
```
curl -sSL https://shipyard-project.com/deploy | bash -s
```
编译 Dockerfile（可以把 odirus/emqttd 换成任意组合，但如果要上传至 Docker hub，请参照相应标准，下同）
```
git clone https://github.com/odirus/docker-emqttd.git && cd docker-emqttd && docker build -t odirus/emqttd .
```
运行容器
```
docker run -p 1883:1883 -p 8083:8083 -p 18083:18083 odirus/emqttd
```
