# List available commands
_default:
  just --choose --chooser "fzf +s -x --tac --cycle"

help:
	just --list

update:
	./scripts/update-meta.sh

build: update
	./scripts/build-list.sh
