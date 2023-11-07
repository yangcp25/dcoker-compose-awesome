docker network create mynet
docker-compose -f ./sql-docker-compose.yml up -d
docker-compose -f ./sql-docker-compose.yml up -d nginx
docker-compose -f ./sql-docker-compose.yml restart nginx