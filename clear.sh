rm -rf /var/docker/* && echo "space done..."
ls  -al /var/docker

echo "------------容器-------------"
docker-compose down && docker ps -a 
echo "------------镜像-------------"
docker rmi ms_quick_master_db ms_quick_slave1_db; docker images
