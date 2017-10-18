# docker run --name dnsmasq -d -p 53:53/udp -p 5380:8080 --log-opt "max-size=100m" -e "USER=tongwii" -e "PASS=tongwii" --restart always tongwii/dnsmasq
# 定义变量
ARG OS_VERSION=latest

# 基于几个基本镜像
FROM tongwii/baseimage:${OS_VERSION}

# 添加一些元数据
LABEL maintainer="info@tongwii.com" \
    version="1.0" \
    description="dns server(dnsmasq)"

# 添加环境变量
ENV WEBPROC_VERSION 0.1.9
ENV WEBPROC_URL https://github.com/jpillora/webproc/releases/download/$WEBPROC_VERSION/webproc_linux_amd64.gz

# build时执行命令
RUN apk update \
    && apk add --no-cache dnsmasq \
    && apk add --no-cache --virtual .build-deps curl \
    && curl -sSLO $WEBPROC_URL \
    && gzip -d webproc_linux_amd64.gz \
    && mv webproc_linux_amd64 /usr/local/bin/webproc \
    && chmod +x /usr/local/bin/webproc \
    && apk del .build-deps \
    && rm -rf /var/cache/apk/*

# 配置dnsmasq
RUN mkdir -p /etc/default/
RUN echo -e "ENABLED=1\nIGNORE_RESOLVCONF=yes" > /etc/default/dnsmasq

# 复制配置文件
COPY dnsmasq.conf /etc/dnsmasq.conf

# 导出端口
EXPOSE 53/udp 8080

# 执行指令
ENTRYPOINT ["webproc","--config","/etc/dnsmasq.conf","--","dnsmasq","--no-daemon"]