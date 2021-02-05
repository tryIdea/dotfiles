all: install

install:
	yum install tmux
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
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
	test -d .ssh || mkdir -p .ssh
	cp ~/.ssh/config .ssh/config
	test -d .bin || mkdir -p .bin
