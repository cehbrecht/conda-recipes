#!/bin/bash

# Build dependencies:
# - java-1.7.0-openjdk-devel
# - appropriately setup JAVA_HOME variable in system

mkdir -vp ${PREFIX}/bin;
mkdir -vp ${PREFIX}/share/java;

export JAVA_HOME="/usr/lib/jvm/default-java"

mv restflow.jar ${PREFIX}/share/java/restflow.jar

cat <<EOF > ${PREFIX}/bin/restflow
#!/bin/sh
/usr/bin/java -jar ${PREFIX}/share/java/restflow.jar $*
EOF
chmod a+x ${PREFIX}/bin/restflow

