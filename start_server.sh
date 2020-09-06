#!/usr/bin/env bash

cd /opt/deployment/get_host/
go run test.go

while true; do sleep 10000; done
