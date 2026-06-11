#!/usr/bin/env sh
GRADLE_OPTS="${GRADLE_OPTS:-"-Dhttps.protocols=TLSv1.2 -Dfile.encoding=UTF-8"}"
APP_HOME=$( cd "${APP_HOME:-./}" && pwd -P ) || exit
APP_NAME="Gradle"
APP_BASE_NAME=${0##*/}
DEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'
JAVACMD="${JAVA_HOME+${JAVA_HOME}/bin/}java"
exec "$JAVACMD" $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS \
  "-Dorg.gradle.appname=$APP_BASE_NAME" \
  -classpath "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" \
  org.gradle.wrapper.GradleWrapperMain "$@"
