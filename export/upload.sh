docker login --username=18983663382 --password=1994okyang registry.cn-shanghai.aliyuncs.com

docker load < rustdesk.tar

docker tag 927985b3e22d registry.cn-shanghai.aliyuncs.com/ycp_code/rustdesk:1.0.0
docker push registry.cn-shanghai.aliyuncs.com/ycp_code/rustdesk:1.0.0

