## how to write Dockerfile
  * how to deploy java application in tomcat
    * webapps
    * in webapps deploy java application 
 approches:
   * if i take  base image ubuntu 
      Ubuntu:16.04 
      * install java
       ---
       apt-get update 
       apt-get install openjdk-8-jdk -y
       ---
       RUN: its docker instruction for execute commands
       
      * install tomcat8:
       apt-get install tomcat8 -y
      * deploy application
    ---
    FROM ubuntu:16.04
    RUN apt-get update
    RUN apt-get install openjdk-8-jdk -y
    RUN apt-get install tomcat8 -y
    RUN wget https://jar-war.s3.amazonaws.com/gameoflife.war
    RUN cp gameoflife.war /webapps    
    ---

* Base image openjdk:8  (OS + openjdk8)
 
 FROM openjdk:8
 RUN apt-get install tomcat8 -y
 RUN wget https://jar-war.s3.amazonaws.com/gameoflife.war
 RUN cp gameoflife.war /webapps  

 * Base image tomcat:8  (OS + JDK8 + tomcat8)
 ---
 FROM tomcat:8
 RUN wget https://jar-war.s3.amazonaws.com/gameoflife.war
 RUN cp gameoflife.war /webapps 
 ---

 Docker instruction:
 ------------------
   * FROM  (Base image)
   * RUN   (Execute Commands) -- its execute while build the image
   * EXPOSE (expose Port)
   * CMD  its also used for execute commands while create the container 
          * define container life time
          * eg: echo hello
          CMD ["echo" , "hello"]
          just print hello and kill the container
          eg: ping google.com
            CMD ["ping" ,"google.com"]
     * CMD supports two formats
        1 Shell format
         CMD catalina.sh run
        2 executable format (best practice )
          CMD ["catalina.sh", "run"]

   ---
   
 FROM tomcat:8
 RUN wget https://jar-war.s3.amazonaws.com/gameoflife.war
 RUN cp gameoflife.war /webapps 
 EXPOSE 8080 
CMD ["catalina.sh", "run"]


