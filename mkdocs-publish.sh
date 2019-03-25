#!/usr/bin/env bash
docker run --rm -v ~:/root -v `pwd`:/docs -w /docs pjoc/mkdocs:v0.0.10 mkdocs gh-deploy
