#   Install Packer for Neovim


Clone repository:

```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Tambien puedes revisar el [git-hub de packer](https://github.com/wbthomason/packer.nvim) y instalar con git clone.

Para iniciar packer es nesesario entrar a nvim en el documento packer.lua y escribir en la linea de comandos:

```sh
:so
```
```sh
:PackerSync 
```

##  Check and install telescope dependencies

usar en la linea de comandos para revisar progrmas faltantes: 

```sh
:checkhealth telescope  
```
Los programas faltantes para telescope en general es live-grep pero tambien se puede instalar como sustituto ripgrep:
```sh
sudo pacman -S  ripgrep
```
```sh
sudo pacman -S  live-grep
```

#   Keysmap





