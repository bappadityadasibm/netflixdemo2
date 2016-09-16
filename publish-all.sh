#!/usr/bin/env bash

releasetype=$1
echo "Need to publish with release version=$releasetype"

if [  $releasetype = "minor" ]; then
cd microservices/composite/product-composite-service; ./gradlew artifactoryPublish -PreleaseType=minor; cd -
else
cd microservices/composite/product-composite-service; ./gradlew artifactoryPublish -PreleaseType=patch; cd -
fi