#!/bin/bash

# Build dependencies:
# - java-1.7.0-openjdk-devel
# - appropriately setup JAVA_HOME variable in system

mkdir -vp ${PREFIX}/bin;
mkdir -vp ${PREFIX}/opt;

export JAVA_HOME="/usr/lib/jvm/java"
export JRE_HOME="/usr/lib/jvm/jre"

mv * ${PREFIX}/opt/

