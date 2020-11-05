#!/bin/bash
sh -c "sudo chown -R scc /app"
sh -c "sudo chmod -R 777 /app"
/app/scc $@
