## dnsmasq
**DNS服务器,带WEB UI的配置界面**
### 启动服务
```
docker run --name dnsmasq -d -p 53:53/udp -p 5380:8080 --log-opt "max-size=100m" -e "USER=tongwii" -e "PASS=tongwii" --restart always tongwii/dnsmasq
```
### 配置界面与运行查看
在浏览器中输入:http://<DOCKER_IP>:5380
### 测试
#### Windows
```
nslookup www.baidu.com
```
#### Linux
```
host www.baidu.com <DOCKER_IP>
```