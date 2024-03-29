all: install

install:
	cp -rf .vim ~/
	cp .vimrc ~/
	cp .zshrc ~/
	cp -f .tmux.conf ~/
	cp -f .gitconfig ~/
	cp .myclirc ~/
	cp .ideavimrc ~/
	test -d ~/.ssh || mkdir -p ~/.ssh
	cp .ssh/config ~/.ssh/config

update:
	cp ~/.vimrc .
	cp ~/.zshrc .
	cp ~/.tmux.conf .
	cp ~/.gitconfig .
	cp ~/.myclirc .
	cp ~/.ideavimrc .
	test -d .ssh || mkdir -p .ssh
	cp ~/.ssh/config .ssh/config
	test -d .bin || mkdir -p .bin
