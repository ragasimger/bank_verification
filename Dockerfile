FROM openjdk:21-jdk-slim

WORKDIR /usr/src/app

COPY bank-demo-1.0.jar .

CMD ["java", "-jar", "bank-demo-1.0.jar"]