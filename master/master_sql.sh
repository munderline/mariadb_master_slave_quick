#! /bin/bash
# mysql账户和密码
USERNAME="root"
USERPASS="123456"
# 用于备份的账户和密码
BACKNAME="backup"
BACKPASS="backup"

# 授予权限
mysql -u${USERNAME} -p${USERPASS} -e "grant replication slave on *.* to '${BACKNAME}'@'%' identified by '${BACKPASS}' " 
# 刷新
mysql -u${USERNAME} -p${USERPASS} -e "flush privileges"
# 查看
mysql -u${USERNAME} -p${USERPASS} -e "show master status\G"

