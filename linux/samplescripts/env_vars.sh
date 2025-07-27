#!/bin/bash
echo "The current user is $USER"
echo "The path of executiion is $PATH)"
echo "The shell being used is $SHELL"
echo "The script being used is $0"
# In Bash scripting, $0 is a special parameter that expands to the name of the shell or shell script that is currently running
# The name of the script or shell: When you execute a Bash script, $0 will contain the name of that script as it was invoked. This might include the full path or a relative path, depending on how the script was called.
#The name of the shell: If Bash is invoked interactively, $0 will often expand to bash or -bash (for a login shell)
