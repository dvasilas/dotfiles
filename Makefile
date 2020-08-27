.PHONY : install
install :
	stow --target $(HOME) --verbose bash
	stow --target $(HOME) --verbose git
	stow --target $(HOME) --verbose tmux
	stow --target $(HOME) --verbose vim
	stow --target $(HOME)/.ssh --verbose ssh

.PHONY : dry-run
dry-run :
	stow --no --target $(HOME) --verbose bash
	stow --no --target $(HOME) --verbose git
	stow --no --target $(HOME) --verbose tmux
	stow --no --target $(HOME) --verbose vim
	stow --no --target $(HOME)/.ssh --verbose ssh
