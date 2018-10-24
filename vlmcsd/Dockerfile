# 定义变量
ARG OS_VERSION=latest

# 基于几个基本镜像
FROM tongwii/baseimage:${OS_VERSION}

# 添加一些元数据
LABEL maintainer="info@tongwii.com" \
    version="1.0" \
    description="kms server(vlmcsd)"

# build时执行命令
RUN apk update \
    && apk add --no-cache build-base gcc abuild binutils cmake git \
    && cd / \
    && git clone https://github.com/Wind4/vlmcsd.git vlmgit \
    && cd vlmgit \
    && make \
    && chmod +x bin/vlmcsd \
    && mv bin/vlmcsd / \
    && cd / \
    && apk del build-base gcc abuild binutils cmake git \
    && rm -rf /vlmgit \
    && rm -rf /var/cache/apk/*

# 导出端口
EXPOSE 1688

# 执行指令
ENTRYPOINT ["/vlmcsd", "-D", "-d", "-t", "3", "-e", "-v"]