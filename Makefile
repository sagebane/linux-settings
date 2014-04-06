HOME=/home/sgbn
PWD=$(shell pwd)

sync:
	rsync -av $(HOME)/.emacs.d/init.el $(PWD)/emacs.d/
	rsync -av $(HOME)/.sawfish/ $(PWD)/sawfish/
	rsync -av $(HOME)/.screenrc $(PWD)/screenrc

install:
	rsync -av $(PWD)/emacs.d/init.el $(HOME)/.emacs.d/init.el
	rsync -av $(PWD)/sawfish/ $(HOME)/.sawfish/
	rsync -av $(PWD)/screenrc $(HOME)/.screenrc
