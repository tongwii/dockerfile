# 定义变量
ARG OS_VERSION=latest

# 基于几个基本镜像
FROM alpine:${OS_VERSION}

# 添加一些元数据
LABEL maintainer="info@tongwii.com" \
    version="1.0" \
    description="TongWII Base system"

# 定义变量
ARG TZ=Asia/Shanghai
# 环境变量定义
ENV TZ ${TZ}

# build时执行命令
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk upgrade --update \
    && apk add -U tzdata \
    && cp /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && rm -rf /var/cache/apk/*

# 执行指令
CMD ["sh"]