#!/usr/bin/env bash
docker build -t jmfrank63/auth0-javascript-samples:01-Login .
docker run --init -p 3000:3000 -v ~/.local/share/certs:/app/certs -it jmfrank63/auth0-javascript-samples:01-Login