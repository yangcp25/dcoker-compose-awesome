# 使用 WordPress 官方镜像作为基础镜像
FROM wordpress:php8.3-fpm-alpine

# 安装 Nginx
RUN apk add --no-cache nginx

# 复制 Nginx 配置文件到容器中
COPY ./deploy/nginx/conf/nginx.conf /etc/nginx/nginx.conf
COPY ./deploy/nginx/conf/vhost.conf /etc/nginx/conf.d/vhost.conf

# 暴露 Nginx 默认端口
EXPOSE 80

# 启动 Nginx 和 PHP-FPM
CMD ["nginx", "-g", "daemon off;"]
