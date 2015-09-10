WORKDIR = $(HOME)
DOTFILE_TARGETS = fonts.install git.install i3.install npm.install vim.install zsh.install


install: $(DOTFILE_TARGETS)

fonts.install:
	chmod +x fonts/install.sh
	fonts/install.sh

%.install: %	
	stow -t $(WORKDIR) $<
