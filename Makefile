.PHONY : install
install :
	stow --target $(HOME) --verbose bash
	stow --target $(HOME) --verbose git
	stow --target $(HOME) --verbose tmux
	stow --target $(HOME)/.config/nvim --verbose vim
	stow --target $(HOME)/.ssh --verbose ssh
	stow --target $(HOME)/.config/fish --verbose fish

.PHONY : dry-run
dry-run :
	stow --no --target $(HOME) --verbose bash
	stow --no --target $(HOME) --verbose git
	stow --no --target $(HOME) --verbose tmux
	stow --no --target $(HOME) --verbose vim
	stow --no --target $(HOME)/.config/nvim --verbose vim
	stow --no --target $(HOME)/.ssh --verbose ssh
	stow --no --target $(HOME)/.config/fish --verbose fish
