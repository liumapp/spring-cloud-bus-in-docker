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

docker rmi liumapp/bus-gateway:v1.0.0
docker rmi liumapp/bus-eureka:v1.0.0
docker rmi liumapp/bus-config:v1.0.0
docker rmi liumapp/demo-api-a:v1.0.0
docker rmi liumapp/demo-api-b:v1.0.0
docker rmi liumapp/independent-worker:v1.0.0


