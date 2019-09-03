#!/bin/bash
set -e
EXIT_STATUS=0

./gradlew --stop
./gradlew testClasses --no-daemon
./gradlew check -i --no-daemon || EXIT_STATUS=$?


exit $EXIT_STATUS
