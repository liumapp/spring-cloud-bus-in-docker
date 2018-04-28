#!/bin/bash

echo '============================================================='
echo '$                                                           $'
echo '$                      liumapp                              $'
echo '$                                                           $'
echo '$                                                           $'
echo '$  email:    liumapp.com@gmail.com                          $'
echo '$  homePage: http://www.liumapp.com                         $'
echo '$  Github:   https://github.com/liumapp                     $'
echo '$                                                           $'
echo '============================================================='
echo '.'

# first of all , we need install rabbitMq image from docker hub .

docker pull rabbitmq:3.7.4-management

# secondly , we build our own image from project .

# and pay attention plz , if you got any engine modules , plz run the commond below first

mvn clean install -Dmaven.test.skip=true

cd bus-config

mvn clean package -Dmaven.test.skip=true docker:build

cd ..

cd bus-eureka

mvn clean package -Dmaven.test.skip=true docker:build

cd ..

cd bus-gateway

mvn clean package -Dmaven.test.skip=true docker:build

cd ..

cd bus-hello

mvn clean package -Dmaven.test.skip=true docker:build

cd ..

cd bus-service

cd demo-api-a

mvn clean package -Dmaven.test.skip=true docker:build

cd ..

cd demo-api-b

mvn clean package -Dmaven.test.skip=true docker:build

cd ..

cd independent-worker

mvn clean package -Dmaven.test.skip=true docker:build

cd ..

cd ..





