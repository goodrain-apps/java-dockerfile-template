#!/bin/bash

sleep ${PAUSE:-0}

exec java $JAVA_OPTS -jar  --port ${PORT:-5000}  target/*.jar