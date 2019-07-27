#! /bin/bash
# mysql账号和密码
USERNAME="root"
USERPASS="123456"
# 用于备份的账号和密码
BACKNAME="backup"
BACKWORD="backup"
# 主机配置信息
HOST='192.168.0.106'
PORT=23306 
LOG_FILE='master-bin.000003' 
LOG_POS=654 


# 停止复制
mysql -u${USERNAME} -p${USERPASS} -e "stop slave"
# 修改主机配置信息
mysql -u${USERNAME} -p${USERPASS} -e "change master to 
MASTER_HOST = '${HOST}', 
MASTER_USER = '${BACKNAME}',  
MASTER_PASSWORD = '${BACKWORD}', 
MASTER_PORT = ${PORT}, 
MASTER_LOG_FILE = '${LOG_FILE}', 
MASTER_LOG_POS = ${LOG_POS};" 
# 开启复制
mysql -u${USERNAME} -p${USERPASS} -e "start slave"
# 展示配置信息
mysql -u${USERNAME} -p${USERPASS} -e "show slave status\G"
