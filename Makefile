all: install

install:
	cp .vimrc ../
	cp .zshrc ../
	cp .tmux.conf ../
	cp .gitconfig ../
	cp .myclirc ../
	cp .ideavimrc ../

update:
	cp -rf ~/.vim .
	cp ~/.vimrc .
	cp ~/.zshrc .
	cp ~/.tmux.conf .
	cp ~/.gitconfig .
	cp ~/.myclirc .
	cp ~/.ideavimrc .
	cp -rf ~/.oh-my-zsh .
