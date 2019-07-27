FROM mariadb/server
ADD ./master_sql.sh /docker-entrypoint-initdb.d
# ADD ./master_config.sh /docker-entrypoint-initdb.d
ADD ./master_my.cnf /etc/mysql/my.cnf
WORKDIR /docker-entrypoint-initdb.d

# RUN mysql -uroot -p123456 -e "show master status\G" 

# CMD ["sh", "master_sql.sh"]
# CMD ["sh", "master_config.sh"]
