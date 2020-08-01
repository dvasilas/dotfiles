stow_dirs = $(wildcard */)

.PHONY : install
install :
	stow --target $(HOME) --verbose $(stow_dirs)

.PHONY : dry-run
dry-run :
	stow --no --target $(HOME) --verbose $(stow_dirs)
