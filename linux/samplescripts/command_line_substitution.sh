#!/bin/bash
echo "Command line susitution"
echo "Today date is $(date)"
echo "Use command line substitution to check the status of nginx service"
status=" The nginx service is $(systemctl is-active nginx)"
echo "$status"
