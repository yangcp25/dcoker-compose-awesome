
[参考文章](https://blog.csdn.net/qq_40619119/article/details/133908171)


```
// 外部可连接（可选）
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root';

// 配置主库的同步账号
CREATE USER 'slave'@'%' IDENTIFIED BY'123456@';
GRANT REPLICATION SLAVE ON *.* TO 'slave'@'%';
GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'slave'@'%';
flush privileges;

show master status;  // 查看日志文件
比如是
+---------------+----------+--------------+------------------+-------------------+
| File          | Position | Binlog_Do_DB | Binlog_Ignore_DB | Executed_Gtid_Set |
+---------------+----------+--------------+------------------+-------------------+
| binlog.000002 |     1097 |              |                  |                   |
+---------------+----------+--------------+------------------+-------------------+


# 查看容器内部地址 如果是外网就用 外网地址
docker inspect mysql-master
docker inspect -f "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" mysql-master
// 配置从库  log-bin=mysql-bin（日志文件）

docker exec -it mysql-slave-1 /bin/bash
 mysql -uroot -proot
change master to master_host='172.18.0.9', master_user='slave3', master_password='123456@', master_port=3306, master_log_file='mysql-bin.000001', master_log_pos=155, master_connect_retry=30;
start slave;
stop slave;
show slave status \G;

chmod 644 /etc/mysql/my.cnf
```