#!/bin/bash
docker run --restart always --name mkdocs -d -v `pwd`:/docs  -w /docs pjoc/mkdocs:v0.0.9 mkdocs serve -a 0.0.0.0:8000
