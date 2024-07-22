FROM openjdk:21-jdk-slim

WORKDIR /usr/src/app

COPY application-dev.properties .
COPY bank-demo-1.0.jar .
COPY CM-UareU-SDK-3.2.0-1.20190226_1701.tar.gz .
RUN tar -xvzf CM-UareU-SDK-3.2.0-1.20190226_1701.tar.gz
RUN chmod +x install
RUN yes | bash /usr/src/app/installers/setup_tar_64.bin -y

CMD ["java", "-jar", "bank-demo-1.0.jar"]