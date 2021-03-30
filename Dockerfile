FROM maven:3.6.3-jdk-8 as build
WORKDIR /app
COPY source .
RUN mvn package
FROM tomcat:7-jdk8-openjdk
COPY --from=build /app/webapp/target/webapp.war /usr/local/tomcat/webapps
EXPOSE 8080

