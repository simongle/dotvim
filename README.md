## Installation of Vim config

Installation:

    git clone git://github.com/simongle/dotvim.git ~/.vim

Create symlink:

    ln -s ~/.vim/vimrc ~/.vimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule update --init

Download Powerline fonts for vim airline:
		[powerline repo](https://github.com/powerline/fonts)

Make sure to set powerline font in terminal settings (Noto Mono is a good one)
## Adding new plugins

    cd ~/.vim
    git submodule add https://github.com/path/to/repo.git bundle/pluginname

## Color Schemes

To change the colorscheme of Vim, add to your `.vimrc`:

    colorscheme nameofcolorscheme
    
For example, to change the color scheme to wombat:
    
    colorscheme wombat

To list colors, enter vim command mode and:
    
    :SetColors
    :colors d... #use tab to autocomplete through different colorschemes

## Line Numbers

To toggle between line numbers
  
    :set nu!
