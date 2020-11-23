#!/bin/bash

LOGGING_OPTS="-Dmanagement.endpoints.web.exposure.include=loggers -Dmanagement.endpoint.loggers.enabled=true -Dlogging.level.ROOT=TRACE"
FAT_JAR=target/runtime-logging-config-0.0.1-SNAPSHOT.jar

java $LOGGING_OPTS -jar $FAT_JAR
