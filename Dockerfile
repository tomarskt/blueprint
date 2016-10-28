FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ARG APP_VERSION
ADD spring-boot-restful-web-serivce-0.1.0.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
