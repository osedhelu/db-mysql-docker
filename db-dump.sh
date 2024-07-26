#!/bin/bash

# Verifica si el contenedor está corriendo
if ! docker ps | grep -q mysql; then
	  echo "El contenedor MySQL no está corriendo."
	    exit 1
fi

# Ejecuta el comando mysqldump dentro del contenedor
docker exec -it mysql bash -c 'MYSQL_PWD=938jfoasdfoijf mysqldump -u root laravel' > ./backup.sql

