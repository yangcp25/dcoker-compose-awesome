docker 安装rabbitmq
docker search rabbitmq
docker pull rabbitmq:latest
docker run -d --hostname my-rabbit --name some-rabbit -p 4369:4369 -p 5671:5671 -p 5672:5672 -p 15672:15672 rabbitmq:latest
docker exec some-rabbit rabbitmq-plugins enable rabbitmq_management