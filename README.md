TongWII dockerfile
================

## baseimage
**基础系统，设置了时区**

## vlmcsd
**kms批量激活服务**
### 启动服务
```
docker run -d -p 1688:1688 --restart=always --name vlmcsd tongwii/vlmcsd
```
### 查看日志
```
docker logs vlmcsd
```
### 客户端配置
#### Windows
```
slmgr.vbs -upk
slmgr.vbs -ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
slmgr.vbs -skms <DOCKER_IP>
slmgr.vbs -ato
slmgr.vbs -dlv
```
#### Office
```
CD \Program Files\Microsoft Office\Office16 OR CD \Program Files (x86)\Microsoft Office\Office16
cscript ospp.vbs /sethst:<DOCKER_IP>
cscript ospp.vbs /inpkey:xxxxx-xxxxx-xxxxx-xxxxx-xxxxx
cscript ospp.vbs /act
cscript ospp.vbs /dstatusall
```

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

## shadowsocks

