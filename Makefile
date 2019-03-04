all: install

install:
	cp -rf .vim ~/
	cp .vimrc ~/
	cp .zshrc ~/
	cp .tmux.conf ~/
	cp .gitconfig ~/
	cp .myclirc ~/
	cp .ideavimrc ~/
	cp .ssh/config ~/.ssh/config

update:
	cp ~/.vimrc .
	cp ~/.zshrc .
	cp ~/.tmux.conf .
	cp ~/.gitconfig .
	cp ~/.myclirc .
	cp ~/.ideavimrc .
	mkdir .ssh
	cp ~/.ssh/config .ssh/config
