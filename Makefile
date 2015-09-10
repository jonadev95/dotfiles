WORKDIR = $(HOME)
DOTFILE_TARGETS = fonts.install i3.install zsh.install


install: $(DOTFILE_TARGETS)

fonts.install:
	chmod +x fonts/install.sh
	fonts/install.sh

%.install: %	
	stow -t $(WORKDIR) $<
