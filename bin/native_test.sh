#!/usr/bin/env bash
mvn -Pnative      spring-aot:process-boot
mvn -PnativeTest  test

