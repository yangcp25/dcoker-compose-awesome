docker run -d \
  -p 11157:1157 \
  -p 11158:1158 \
  --name hertzbeat \
  -e INIT_ADMIN_USER="kse_admin" \
  -e INIT_ADMIN_PASSWORD="kse_admin_pass_@123" \
  -e TZ="Asia/Shanghai" \
  --restart=always \
  -v /home/deploy/hertzbeat2/data/hertzbeat/data:/opt/hertzbeat/data \
  -v /home/deploy/hertzbeat2/sureness.yml:/opt/hertzbeat/config/sureness.yml \
  registry.cn-shanghai.aliyuncs.com/ycp_code/hertzbeat:v1.0.0

  sudo chmod -R 777 /home/deploy/hertzbeat2/data/hertzbeat/data

 139.196.190.36 va-ets-api.veriii.com
 139.196.190.36 va-student-api.veriii.com
 139.196.190.36 va-admin-api.veriii.com
 139.196.190.36 va-student-api.veriii.com
 139.196.190.36 meeting-api.veriii.com
