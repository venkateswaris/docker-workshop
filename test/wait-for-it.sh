#!/usr/bin/env bash

while ! nc -z app 8080; do echo 'waiting for app'; sleep 5s; done

./test.sh