#!/bin/bash
docker pull mysql

# setting up db1
docker run --name my-db1 \
-e MYSQL_ROOT_PASSWORD=password \
-d mysql

docker exec -it -u root my-db1 mysql -p

# setting up db2
docker run --name my-db2 \
-e MYSQL_ROOT_PASSWORD=admin \
-p 3306:3306 \
-d mysql

docker exec -it -u dalon my-db2 mysql -p


