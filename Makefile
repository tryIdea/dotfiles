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
	cp .bin/tmuxinator.zsh ~/.bin/tmuxinator.zsh

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
	cp ~/.bin/tmuxinator.zsh .bin/tmuxinator.zsh
