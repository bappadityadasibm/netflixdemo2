#!/usr/bin/env bash

releasetype=$1
echo "Need to release with release version=$releasetype"
if [  $releasetype = "minor" ]; then
echo "Minor version release"
cd microservices/composite/product-composite-service; ./gradlew release -Prelease.useAutomaticVersion=true -PreleaseType=minor; cd -
else
   echo "Patch version release"
cd microservices/composite/product-composite-service; ./gradlew release -Prelease.useAutomaticVersion=true -PreleaseType=patch; cd -
fi

