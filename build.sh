#!/bin/bash

rm -rf docs/*
hugo --destination docs
touch docs/CNAME
echo "rarecandymaster.com" > docs/CNAME

