## shadowsocks-privoxy
**shadowsocks客户端提供socks5代理<br>
privoxy提供http代理**

### 启动服务
```
docker run -d -e SERVER_ADDR=ss.server.ip -e SERVER_PORT=port -e PASSWORD=123456 --restart always tongwii/shadowsocks-privoxy
```