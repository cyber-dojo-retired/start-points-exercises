
<img src="https://raw.githubusercontent.com/cyber-dojo/web/master/public/images/home_page_logo.png" alt="cyber-dojo yin/yang logo" width="50px" height="50px"/>

Work in progress. Aiming for a command api such as this...

$ ./cyber-dojo volume create --name=mike --git=https://github.com/cyber-dojo/default-instructions.git

$ ./cyber-dojo up --instructions=mike

from a cyber-dojo server which will pull the repo and put it into a docker
volume named mike which will then used as the source of instructions in the setup page.
