#!/bin/sh
docker exec container_name sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > database_backup.sql