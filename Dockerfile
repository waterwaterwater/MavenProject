FROM maven:3.6.3-jdk-8 as build
WORKDIR /app
COPY source .
RUN mvn package


