#!/usr/bin/env bash
docker run --rm -v ~/.ssh:/root/.ssh -v `pwd`:/docs -w /docs pjoc/mkdocs:v0.0.10 mkdocs gh-deploy
