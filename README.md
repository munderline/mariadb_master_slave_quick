# mariadb_master_slave_quick
利用docker快速搭建mariadb的主从复制环境

1. 进入当前文件夹,执行docker-compose up -d 即可;
2. 进入master容器,执行sh master_sql.sh查看File和Position的值;
3. 进入从服务器修改slave_sql.sh中对应的参数,修改完成后保存运行: sh slave_sql.sh查看是否配置成功;
4. 其中clear.sh为清理脚本,方便清理;
