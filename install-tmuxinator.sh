#! /bin/bash

# 安装gem
yum install gem
gem sources --remove https://rubygems.org --add http://mirrors.aliyun.com/rubygems/
gem sources -l
# 安装Tmuxinator
gem install tmuxinator

# 配置别名mux和tmuxinator子命令智能补全
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator

