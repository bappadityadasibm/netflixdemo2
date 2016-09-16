#!/usr/bin/env bash

releasetype=$1
echo "Need to release with release version=$releasetype"
if [  $releasetype = "minor" ]; then
echo "Releasing Minor Version"
cd microservices/composite/product-composite-service; ./gradlew releasebase -Prelease.useAutomaticVersion=true -PreleaseType=minor; cd -
else
   echo "Releasing Patch Version"
cd microservices/composite/product-composite-service; ./gradlew releasebase -Prelease.useAutomaticVersion=true -PreleaseType=patch; cd -
fi

