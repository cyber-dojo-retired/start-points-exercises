Work in progress. Aiming for a command api such as this...

$ ./cyber-dojo create-volume mike=https://github.com/JonJagger/cyber-dojo-instructions.git
$ ./cyber-dojo up instructions=mike

from a cyber-dojo server which will pull the repo and put it into a docker
volume named mike which will then used as the source of instructions in the setup page.
