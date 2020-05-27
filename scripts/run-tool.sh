#!/bin/bash

docker run --name deploytool -p 5000:5000 -v /home/yyr/deploy-deployTool:/code/tool --restart always --privileged=true -it deploytool
