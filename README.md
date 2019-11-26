Installation:
	
  ```
	git clone https://github.com/turbopasi/dotvim.git ~/.vim  
  ```
  
Create symlinks:
	
  ```
	ln -s ~/.vim/.vimrc ~/.vimrc
	ln -s ~/.vim/.gvimrc ~/.gvimrc
  ```

Switch to the `~/.vim` directory, and fetch submodules:
	
  ```
	cd ~/.vim
	git submodule init
	git submodule update
  ```

How to add new submodules
  
  ```
	cd ~/.vim
	git submodule add <url/repo-name.git> /bundle/repo-name
  git submodule init
  git submodule update
  ```

This repository has been setup for personal use mostly, to have vim settings (including all plugins) synched between all my machines. The setup as it is, is used on

  `Windows 10 64 bit` 
  `Windows WSL Ubuntu Bash Terminal`


