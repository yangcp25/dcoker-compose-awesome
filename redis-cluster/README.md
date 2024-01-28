
```
docker-compose up -d
docker exec -it 181-redis-6379 /bin/bash

// 
redis-cli -a 12345qruafj --cluster create 192.168.1.3:6379 192.168.1.3:6376  192.168.1.3:6377  192.168.1.3:6378  192.168.1.3:6379  192.168.1.3:6374  192.168.1.3:6375 --cluster-replicas 1

```
redis-cli 命令，不同系统参考
[deploy.sh](deploy.sh)