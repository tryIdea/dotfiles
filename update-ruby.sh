#! /bin/bash

#添加aliyun镜像
gem sources -a http://mirrors.aliyun.com/rubygems/

#安装RAM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
#更新配置文件
source /etc/profile.d/rvm.sh
#升级ruby2.5
#rvm install 2.5
#删除原来的仓库地址
#gem sources --remove https://rubygems.org/
