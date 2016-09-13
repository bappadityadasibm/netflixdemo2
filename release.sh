#!/usr/bin/env bash

cd microservices/composite/product-composite-service; ./gradlew release -Prelease.useAutomaticVersion=true; cd -

