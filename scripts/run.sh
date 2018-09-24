#!/bin/bash

/bin/bash -c 'docker rm -f tcat 2>&1 >> /dev/null' || echo 'No existing container should be removed.'

docker run -d -p 127.0.0.1:80:80 \
-v `pwd`/tcat/scripts:/scripts \
--name tcat tcat-php:latest /bin/bash -c 'tail -fn 100 /dev/null'