#!/usr/bin/env bash

mvn clean package

echo 'Copy files ...'

scp -i ~/.ssh/id_rsa \
    target/sweater-1.0-SNAPSHOT.jar \
    olebas13@91.238.103.96:/home/olebas13/

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa olebas13@91.238.103.96 << EOF

pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'
