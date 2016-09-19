#!/usr/bin/env bash

releasetype=$1
echo "Need to release with release version=$releasetype"
if [  $releasetype = "minor" ]
then
   echo "Minor version release"
   cd microservices/composite/product-composite-service; ./gradlew release -Prelease.useAutomaticVersion=true -PreleaseType=minor; cd -
elif [  $releasetype = "patch" ]
then
   echo "Patch version release"
   cd microservices/composite/product-composite-service; ./gradlew release -Prelease.useAutomaticVersion=true -PreleaseType=patch; cd -
else
    echo "Major version release"
    cd microservices/composite/product-composite-service; ./gradlew release -Prelease.useAutomaticVersion=true -PreleaseType=major; cd -
fi

