#!/bin/bash
OUT=$(scc $@ -f json)
echo "::set-output name=scc::$OUT"
#chmod 644 *.json
