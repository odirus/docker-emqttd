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
git clone https://github.com/odirus/docker-emqttd.git &&
cd docker-emqttd && docker build -t odirus/emqttd .
```
运行容器
```
docker run -p 1883:1883 -p 8083:8083 -p 18083:18083 odirus/emqttd
```
开始使用
```
WEB 控制平台 http://server_hostname:18083/ 默认账户 admin public
MQTT 请求端口 tcp://server_hostname:1883
HTTP 请求端口 http://server_hostname:8083
```
接下来我要做什么
* 编译时加入更加灵活的插件支持
* 编译时加入更加灵活的配置文件
* 你提意见，我来修改
