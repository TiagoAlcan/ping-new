FROM maven:3.8.7-openjdk-18-slim

RUN mkdir /opt/ping

COPY . /opt/ping

WORKDIR /opt/ping

RUN mvn clean package

ENTRYPOINT ["java", "-jar", "target/ping-0.0.1-SNAPSHOT.jar"]

