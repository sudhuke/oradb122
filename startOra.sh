#!/bin/bash
/bin/su -c "/home/oracle/setup/setupDB.sh" - oracle
/bin/su -c "/home/oracle/setup/startupDB.sh" - oracle
tail -f /dev/null

