# Personal dotfiles

These are expected be run on OSX

- Clone to the following directory: `~/Projects/dotfiles`
- Clone dependencies (prerequisite): `./scripts/clone_dependencies.sh`
- Install dotfiles using `./scripts/install_dotfiles.sh`
- Install homebrew
- Install applications and libraries using `./scripts/install_homebrew_bundle.sh`
- Change default shell to bash using `chsh -s /usr/local/bin/bash`
- Install LSPs using `./scripts/install_lsp.sh`


## Nvim

### Plugins

Install Plugins
Save and source the plugins.lua file by running 
```:luafile % ```
and then 
```:PackerInstall ```
to install them. Plugins are automatically loaded, no need to restart vim :raisehands




### Files

#### File fuzzy Search
<C-p> 	(preview appears in full screen)
<C-f> 	recent files
<C-g> 	text search, use -g for file filter
                                                                                
e.g. “cats" -g bundle.json
e.g. "isSelected" -g !*.t.ts
<C-k> 	LSP keyword search
(from picker) <C-x>	Open horizontal
(from picker) <C-v>	Open vertical
<C-w>	Resize windows horizontally
<C-_>	Resize windows vertically

#### More files searches (and others)
https://github.com/nvim-telescope/telescope.nvim#pickers

#### File Navigator

##### Using vim-vinegar
:Explore
:Vexplore
:Hexplore

Create new directory: d
Create new file: %
Delete file: D 

##### Using telescope
:Telescope file-browser
:Telescope buffers

#### Copy filename of open buffer
:!echo % | pbcopy




### Search

#### Searching
Telescope
<C-g>
:Telescope live_grep
#### Search History (within Telescope)
<C-Up>
<C-Down>
#### Fast search
:Rg {searchterm} 

#### Remove search highlight
:noh

#### Search Replace
https://thevaluable.dev/vim-search-find-replace/

##### Replace using group
:%s/\vuse \{ ('.*') \}/\1,/gc
\v	whitespace
(.*)	capture group
\1	use group
/c	confirm each replacement

##### Using telescope
C-g
Press tab to select/unselect multiple items
Press enter to select items, then C-q to move selected items into quickfix, then use the following to see your quickfix list
:copen

You can then do find/replace across all items in the list via the following
:cdo s/original/new

##### Using Rg (not working)
:Ag {searchterm}
Press tab to select/unselect multiple items
Press <C-q> to move selected items into quickfix (see https://github.com/damnhipster/dotfiles/blob/master/nvim/plugin/fzf.vim)
:cdo s/original/new


### Multiple Cursors
* select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
* create cursors vertically with Ctrl-Down/Ctrl-Up
* select one character at a time with Shift-Arrows
* press n/N to get next/previous occurrence
* press [/] to select next/previous cursor
* press q to skip current and get next occurrence
* press Q to remove current cursor/selection
* start insert mode with i,a,I,A




### Keymappings and shortcuts

#### Change reserved keyboard shortcuts
Terminal application has Ctrl-Shift-] mapped to <esc>r
This is done in the terminal settings —> keybindings —> + —> Send keystrokes —> Send escape sequence

#### Keymappings
https://github.com/neovim/neovim/pull/16591

#### Emoji Keyboard
Control-Command-Space



### Code Folding
zR and zM



### Language Servers

#### Check if running
:LspInfo

#### Available language servers
https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
Install using ~/dotfiles/scripts/install_lsp.sh
