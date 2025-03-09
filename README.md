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

usar en la linea de comandos para revisar programas faltantes: 

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

Tecla  <kbd>leader</kbd> = <kbd>space</kbd>

##  Keys basics
| Keys | Action |
|:-|:-|
|<kbd>leader</kbd> + <kbd>q</kbd>|cerrar split
|<kbd>leader</kbd> + <kbd>w</kbd>|guardar cambios
|<kbd>ctrl</kbd> + <kbd>t</kbd>|abrir terminal
|<kbd>leader</kbd> + <kbd>v</kbd>|open split vertical
|<kbd>leader</kbd> + <kbd>h</kbd>|open split horizontal
|<kbd>ctrl</kbd> + <kbd>k</kbd>|move down split
|<kbd>ctrl</kbd> + <kbd>i</kbd>|move up split
|<kbd>ctrl</kbd> + <kbd>l</kbd>|move right split
|<kbd>ctrl</kbd> + <kbd>j</kbd>|move left split
|<kbd>Tab</kbd> |   tabula la linea de texto
|<kbd>Tab</kbd> + <kbd>Shift</kbd>| deshace la tabulación


##  Keys telescope and LaTex
| Keys | Action |
|:-|:-|
|<kbd>leader</kbd> + <kbd>ff</kbd>|open telescope search files
|<kbd>leader</kbd> + <kbd>fb</kbd>|open buffers telescope
|<kbd>leader</kbd> + <kbd>fg</kbd>|open grep telescope
|<kbd>leader</kbd> + <kbd>ll</kbd>|open and close compiler LaTex


##  Keys buffers
| Keys | Action |
|:-|:-|
|<kbd>Shift</kbd> + <kbd>Right</kbd>|next buffer
|<kbd>Shift</kbd> + <kbd>Left</kbd>|previus buffer
|<kbd>leader</kbd> + <kbd>b</kbd>|close buffer
|<kbd>leader</kbd> + <kbd>n</kbd>|new buffer


##  Templates LaTex
| Keys | Action |
|:-|:-|
|<kbd>leader</kbd> + <kbd>tx1</kbd>|open template simple
|<kbd>leader</kbd> + <kbd>tx2</kbd>|open template doble colum
|<kbd>leader</kbd> + <kbd>port</kbd>|open template port library
|<kbd>leader</kbd> + <kbd>book</kbd>|open template book
|<kbd>leader</kbd> + <kbd>bm</kbd>|open template beamer


##  Templates Python
| Keys | Action |
|:-|:-|
|<kbd>leader</kbd> + <kbd>py1</kbd>|open template plot
|<kbd>leader</kbd> + <kbd>py2</kbd>|open template polar plot
|<kbd>leader</kbd> + <kbd>py3</kbd>|open template plot 3D
|<kbd>leader</kbd> + <kbd>py4</kbd>|open template four plot 
|<kbd>leader</kbd> + <kbd>pyl</kbd>|open template lineal regresion


##  Templates Bash
| Keys | Action |
|:-|:-|
|<kbd>leader</kbd> + <kbd>zhb</kbd>|open template battery
|<kbd>leader</kbd> + <kbd>zsh1</kbd>|open template simple


