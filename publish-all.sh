#!/usr/bin/env bash

releasetype=$1
echo "Need to publish with release version=$releasetype"

if [  $releasetype = "minor" ]
then
cd microservices/composite/product-composite-service; ./gradlew artifactoryPublish -PreleaseType=minor; cd -
elif [  $releasetype = "patch" ]
then
cd microservices/composite/product-composite-service; ./gradlew artifactoryPublish -PreleaseType=patch; cd -
else
cd microservices/composite/product-composite-service; ./gradlew artifactoryPublish -PreleaseType=major; cd -
fi