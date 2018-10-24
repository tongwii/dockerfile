# 定义变量
ARG OS_VERSION=latest

# 基于几个基本镜像
FROM tongwii/baseimage:${OS_VERSION}

# 添加一些元数据
LABEL maintainer="info@tongwii.com" \
    version="1.0" \
    description="dns server(dnsmasq)"

# 添加环境变量
ENV SERVER_ADDR= \
    SERVER_PORT=8899  \
    METHOD=aes-256-cfb \
    TIMEOUT=300 \
    PASSWORD=

# build时执行命令
RUN apk update \
    && apk add --no-cache py-pip \
    && apk add --no-cache privoxy \
    && rm -rf /var/cache/apk/*

# 复制文件
# config.default 为默认文件只做参考
ADD rootfs /

# 导出端口
EXPOSE 8118 1080

# 执行指令
ENTRYPOINT ["/entrypoint.sh"]