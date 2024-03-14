FROM ubuntu:latest
RUN apt update
RUN  apt install nginx -y
RUN apt install python3.10 -y
RUN apt install openjdk-11-jdk -y
RUN apt install mysql-server -y
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=my_database
ENV MYSQL_USER=my_user
ENV MYSQL_PASSWORD=my_password
EXPOSE 80
EXPOSE 3300
CMD ["mysql, -h","localhost","-u". "my_user","-pmy_password","my_database"]