#!/bin/bash
sh -c "sudo chmod -R 777 /app"
/app/scc $@
sh -c "sudo chmod -R 777 /app"
