FROM tomcat:8
RUN wget https://jar-war.s3.amazonaws.com/gameoflife.war
RUN cp gameoflife.war /usr/local/tomcat/webapps 
EXPOSE 8080 
CMD ["catalina.sh", "run"]


* before taking base image we need to play with base image 
 * create simple  container with base image
   docker container run -d -P tomcat:8
 * goto inside container and check path and play with container
   docker container exec -it f0b8b78c44de /bin/bash


STEPS:
 1 write a Dockerfile
   ---
   FROM tomcat:8
   RUN wget https://jar-war.s3.amazonaws.com/gameoflife.war
   RUN cp gameoflife.war /usr/local/tomcat/webapps 
   EXPOSE 8080 
   CMD ["catalina.sh", "run"]
   ----
2 build image  (Readonly) eg 12 readonly layers
 ----
  docker --help
  docker image --help
  docker image build -t gol:1.0 .
 ---
3 run container (R/W)  13 layers (12 layers readonly + 1 R/W)
 ---
 docker --help
 ## attach mode (not recommanded)
 docker container run -p 8080:8080  gol:1.0 
 ## Detach mode (running background)
 docker container run -d -p 8080:8080  gol:1.0 

