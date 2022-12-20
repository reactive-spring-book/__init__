#!/usr/bin/env bash
rm -rf target 
mvn -Pnative spring-boot:process-boot
mvn -PnativeTest test
