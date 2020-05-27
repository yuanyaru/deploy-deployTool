### 部署工具安装说明

1.到 github 克隆程序源码
``` bash
git clone https://github.com/yuanyaru/deploy-deployTool.git
```
2.安装 pip 工具 
``` bash
cd /usr/dynas/deploy-deployTool/deployTool
python get-pip.py
```
3.安装 docker，如果已安装，跳过此步骤
``` bash
cd /usr/dynas/deploy-deployTool/scripts
./docker_install.sh
```
4.启动程序
``` bash
cd /usr/dynas/deploy-deployTool
make
```
稍等片刻，看到程序启动成功，Ctrl+c关闭即可。

5.验证
``` bash
[root@node-170 deploy-deployTool]# docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
ce813222c52e        deploytool          "python /code/tool/d…"   25 seconds ago      Up 4 seconds        0.0.0.0:5000->5000/tcp   deploytool
```
看到容器启动，则完成部署工具的安装。通过浏览器访问：ip:5000 进入部署页面。
