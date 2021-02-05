FROM jenkins/jenkins:2.249.3-lts-alpine

USER root

# Install maven
RUN apk update
    && apk add maven
    && apk add openjdk11

# Install sonarqube scanner
RUN wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.5.0.2216-linux.zip &&\
    unzip sonar-scanner-cli-4.5.0.2216-linux.zip &&\
    mv "sonar-scanner-4.5.0.2216-linux" "sonar-scanner" &&\
    rm sonar-scanner-cli-4.5.0.2216-linux.zip

WORKDIR /
COPY ./conf/jenkins/sonar-scanner.properties /sonar-scanner/conf/sonar-scanner.properties
