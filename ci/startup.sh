#!/bin/bash
cd /app
source /etc/profile
nohup java -jar -Dfile.encoding=utf-8 -Duser.timezone=GMT+8 /app/app.jar --spring.profiles.active=$APP_ENV --codingfly.swagger.version=$IMAGE_TAG >> stdout.log 2>&1 &
nohup tail -f stdout.log >> /var/log/stdout.log 2>&1 &
nohup frontail ./stdout.log
exec "$@"