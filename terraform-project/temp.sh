#!/bin/bash
mkdir environments
cd environments/
mkdir dev
cd dev/
touch main.tf
touch variables.tf
touch terraform.tfvars
cd ..
mkdir prod
cp ./dev/* ./prod
ls -la prod/
mkdir release
cp ./dev/* ./release/
ls -la release/
