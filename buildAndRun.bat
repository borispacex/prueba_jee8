@echo off
call mvn clean package
call docker build -t com.blas/prueba_jee .
call docker rm -f prueba_jee
call docker run -d -p 9080:9080 -p 9443:9443 --name prueba_jee com.blas/prueba_jee