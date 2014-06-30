#!/bin/bash

# Build dependencies:
# - java-1.7.0-openjdk-devel
# - appropriately setup JAVA_HOME variable in system

mkdir -vp ${PREFIX}/opt/restflow;

export JAVA_HOME="/usr/lib/jvm/default-java"

mv restflow-1.0b01-with-dependencies.jar ${PREFIX}/opt/restflow/restflow-1.0b01-with-dependencies.jar


