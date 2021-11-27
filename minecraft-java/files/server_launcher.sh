#!/bin/bash

sed -i 's/eula=false/eula=true/g' eula.txt && chmod +x server_launcher.sh

cd /opt/minecraft/ && java -Xms1024M -Xmx2000M -jar /opt/minecraft/forge-1.12.2-14.23.5.2855.jar nogui