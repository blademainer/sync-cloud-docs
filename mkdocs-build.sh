#!/usr/bin/env bash
docker run --rm -v `pwd`:/docs -w /docs pjoc/mkdocs:v0.0.9 mkdocs build -d public
