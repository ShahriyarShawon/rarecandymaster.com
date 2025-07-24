#!/bin/bash

rm -rf docs/*
hugo --destination docs --config hugo.toml
touch docs/CNAME
echo "rarecandymaster.com" > docs/CNAME

