redis-cli -a 12345qruafj --cluster create 192.168.5.18:6379 192.168.5.18:6376 192.168.5.18:6377 192.168.5.18:6378 192.168.5.18:6379 192.168.5.18:6374 192.168.5.18:6375 --cluster-replicas 1
redis-cli -a 12345qruafj --cluster check 192.168.5.18:6379

# 连接至集群某个节点
redis-cli -c -a 12345qruafj -h 192.168.5.18 -p 6378
# 查看集群信息
cluster info
# 查看集群结点信息
cluster nodes

# prod
redis-cli -a 12345qruafj --cluster create 172.16.23.181:6379 172.16.23.181:6378 172.16.23.182:6379 172.16.23.182:6378 172.16.23.183:6379 172.16.23.183:6378 --cluster-replicas 1
