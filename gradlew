#!/bin/sh
if [ -z "$JAVA_HOME" ]; then
  if [ -x "/usr/libexec/java_home" ]; then
    export JAVA_HOME=`/usr/libexec/java_home`
  else
    export JAVA_HOME=""
  fi
fi
CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar
if [ -n "$JAVA_HOME" ]; then
  JAVACMD="$JAVA_HOME/bin/java"
else
  JAVACMD="java"
fi
exec "$JAVACMD" $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS "-Dorg.gradle.appname=$APP_BASE_NAME" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
