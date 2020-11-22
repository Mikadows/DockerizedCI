FROM jenkins/jenkins:2.249.3-lts-alpine

USER root

RUN apk update && apk add maven
