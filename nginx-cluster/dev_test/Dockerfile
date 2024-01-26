FROM nginx:1.25.3-alpine

# RUN apk update && apk upgrade
# RUN apk add --no-cache bash curl ipvsadm iproute2 openrc keepalived && \
#    rm -f /var/cache/apk/* /tmp/*

# 在基础镜像上添加需要的能力，包括添加keepalived镜像
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tencent.com/g' /etc/apk/repositories \
            && apk -U upgrade \
            && apk add --no-cache bash curl ipvsadm iproute2 openrc keepalived && \
            rm -f /var/cache/apk/* /tmp/*

# 将咱们容器启动后要操作的执行脚本copy到目标位置
COPY entrypoint.sh /entrypoint.sh

# 给执行脚本增加可执行权限
RUN chmod +x /entrypoint.sh

# 在目标镜像里指定启动脚本，其实就是启动咱们Nginx和Keepalived
CMD ["/entrypoint.sh"]