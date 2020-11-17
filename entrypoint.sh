#!/bin/bash
scc $@

OUTPUT=./*.json

if [ -f "$OUTPUT" ]; then
	chmod 644 *.json
fi
