#!/bin/bash
# to create docker container
docker run -d -p 7101:7101 -p 1521:1521 -p 1522:1522 -p 8081:8081 -p 7103:7103 -p 221:22  --name psmdocker --privileged --hostname psmdocker -e "PSMHOSTNAME=$(hostname -f)"  $1 tail -f /dev/null
