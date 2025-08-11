docker login --username=18983663382 --password=1994okyang registry.cn-shanghai.aliyuncs.com

docker load < almalinux-amd64.tar

docker tag 1e867b17de43 registry.cn-shanghai.aliyuncs.com/ycp_code/hertzbeat:v1.0.0
docker push registry.cn-shanghai.aliyuncs.com/ycp_code/hertzbeat:v1.0.0