#!/usr/bin/env bash

releasetype=$1
echo "Need to build with release version=$releasetype"

cd microservices/core/product-service;                ./gradlew clean publishToMavenLocal; cd -
cd microservices/core/recommendation-service;         ./gradlew clean publishToMavenLocal; cd -
cd microservices/core/review-service;                 ./gradlew clean publishToMavenLocal; cd -

if [  $releasetype = "minor" ]
then
cd microservices/composite/product-composite-service; ./gradlew clean build; ./gradlew asciidoctor; cd -
elif [  $releasetype = "patch" ]
then
cd microservices/composite/product-composite-service; ./gradlew clean build; ./gradlew asciidoctor; cd -
else
cd microservices/composite/product-composite-service; ./gradlew clean build; ./gradlew asciidoctor; cd -
fi
cd microservices/support/discovery-server;            ./gradlew clean build; cd -
cd microservices/support/edge-server;                 ./gradlew clean build; cd -
cd microservices/support/monitor-dashboard;           ./gradlew clean build; cd -
cd microservices/support/turbine;                     ./gradlew clean build; cd -

