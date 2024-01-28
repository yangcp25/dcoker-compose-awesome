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

#win
# redis-cli -a 12345qruafj --cluster create 192.168.1.3:6379  192.168.1.3:6378 192.168.1.3:6377  192.168.1.3:6376   192.168.1.3:6375  192.168.1.3:6374   --cluster-replicas 1
# redis-cli -a 12345qruafj --cluster create 127.0.0.1:6379 127.0.0.1:6376  127.0.0.1:6377  127.0.0.1:6378  127.0.0.1:6379  127.0.0.1:6374  127.0.0.1:6375 --cluster-replicas 1
redis-cli -a 12345qruafj --cluster create 172.18.0.11:6379  172.18.0.12:6378 172.18.0.13:6377  172.18.0.14:6376   172.18.0.15:6375  172.18.0.16:6374   --cluster-replicas 1 --cluster-replicas 1 --cluster-yes
