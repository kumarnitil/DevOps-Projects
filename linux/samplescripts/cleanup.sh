#!/bin/bash

echo " The script to clean up the temporary files"
rm -rf /tmp/*
echo " Clearing the package manager cache "
sudo dnf clean all
echo "Cleanup comppleted"

