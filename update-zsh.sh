#! /bin/bash

echo $(zsh --version)


#wget https://jaist.dl.sourceforge.net/project/zsh/zsh/5.7.1/zsh-5.7.1.tar.xz 
tar xvJf zsh-5.7.1.tar.xz && cd zsh-5.7.1
./configure && make && sudo make install

echo $(/usr/local/bin/zsh --version)
cat /etc/shells

echo "/usr/local/bin/zsh" | tee -a /etc/shells
chsh -s /usr/local/bin/zsh

# 退出shell重新登录生效
