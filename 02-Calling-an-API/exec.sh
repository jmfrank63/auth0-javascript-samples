#!/usr/bin/env bash
docker build -t jmfrank63/auth0-demo:02-Calling-an-API .
docker run --init -p 3001:3001 -v ~/.local/share/certs:/app/certs -it jmfrank63/auth0-javascript-samples:02-Calling-an-API
