#!/usr/bin/env bash

release-version = $1
echo "Need to release with release version=$release-version"
if [  $release-version = "minor" ]; then
cd microservices/composite/product-composite-service; ./gradlew release -Prelease.useAutomaticVersion=true; cd -
else
   echo "Could not get what type of release is wanted."
fi

