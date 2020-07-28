include Makefile.inc

all:clean build run

pip:
	@${py}/get-pip.py

build:
	@${SCRIPTS}/build-tool.sh

run:
	@${SCRIPTS}/run-tool.sh

# 删除deploytool容器
clean:
	-@docker stop ${ct_NAME}
	-@docker rm ${ct_NAME}
