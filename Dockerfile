FROM maven:3.6.3-jdk-8 as build

COPY source .

RUN mvn package

FROM tomcat:7-jdk8-openjdk

COPY --from=build ./target/*.war ./webapps/webapp.war
