#!/usr/bin/env bash
# @author: payne
# @email: wuzhipeng1289690157@gmail.com
# Set up Go development environment

VERSION=1.17.6
PKG=go${VERSION}.linux-amd64.tar.gz
SRC=https://golang.google.cn/dl/${PKG}
echo "Downloading ${SRC} ..."
sudo wget -c ${SRC}
sudo tar -zxf ${PKG} -C /usr/local/
sudo cat >> /etc/profile <<EOF
# config golang config
export PATH=\$PATH:/usr/local/go/bin
EOF
source /etc/profile
go env -w GOPROXY=https://goproxy.cn,direct
go env GOPROXY
go env
echo "Successful Installation ${PKG} ..."
exit 0
