# 定义变量
ARG OS_VERSION=latest
ARG TZ="Asia/Shanghai"

# 基于几个基本镜像
FROM tongwii/baseimage:${OS_VERSION}

# 添加一些元数据
LABEL maintainer="info@tongwii.com" \
      version="1.0" \
      description="Base system"

# 环境变量定义
ENV TZ ${TZ}

# build时执行命令
RUN apk upgrade --update \
    && apk add bash tzdata \
    && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && rm -rf /var/cache/apk/*

# 执行指令
CMD ["/bin/bash"]