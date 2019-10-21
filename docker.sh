#!/bin/sh

docker build --force-rm --no-cache -t hugo .

docker run -i --rm \
    --mount type=bind,source=.,target=/hugo \
    -e 1313 -p 1313:1313 \
    hugo \
    hugo server -D --bind="0.0.0.0"
