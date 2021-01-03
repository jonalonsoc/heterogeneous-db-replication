CREATE USER 'prototype'@'%' IDENTIFIED WITH mysql_native_password BY 'liverpool';

GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT  ON *.* TO 'prototype';

CREATE DATABASE exoplanets;

GRANT ALL PRIVILEGES ON exoplanets.* TO 'prototype'@'%';
