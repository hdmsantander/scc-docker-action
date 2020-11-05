#!/bin/bash
sh -c "sudo chown -R 1000 /app"
sh -c "sudo chmod -R 777 /app"
/app/scc $@
