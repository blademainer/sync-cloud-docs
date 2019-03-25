#!/usr/bin/env bash
docker run --rm -v `pwd`:/docs -w /docs pjoc/mkdocs:v0.0.10 mkdocs build -d public
