#!/bin/sh
mvn clean package && docker build -t com.blas/prueba_jee .
docker rm -f prueba_jee || true && docker run -d -p 9080:9080 -p 9443:9443 --name prueba_jee com.blas/prueba_jee