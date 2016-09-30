
"Font to be ised in a GUI
"These are patched fonts for Powerline and Airline plugins
"cd /tmp
"git clone https://github.com/powerline/fonts
"cd fonts
"./install.sh
if has('macunix')
    "Jump between buffers like between tabs
    map <D-Left> :tabprev<CR>
    map <D-Right> :tabnext<CR>
    set guifont=Literation\ Mono\ \Powerline:h14
    map <D-e> :NERDTreeTabsToggle<CR>
elseif has('win32')
    set guifont=Sauce_Code_Powerline:h12
    set lines=30
    set columns=120
endif
