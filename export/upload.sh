docker login --username=18983663382 --password=1994okyang registry.cn-shanghai.aliyuncs.com

docker load < grafana.tar

docker tag 3d175e50c0fe registry.cn-shanghai.aliyuncs.com/ycp_code/grafana:12.1.1
docker push registry.cn-shanghai.aliyuncs.com/ycp_code/grafana:12.1.1

