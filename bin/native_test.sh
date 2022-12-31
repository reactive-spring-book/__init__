#!/usr/bin/env bash
rm -rf target 
mvn -DskipTests spring-javaformat:apply clean package 
mvn -Pnative spring-boot:process-aot
mvn -PnativeTest test
