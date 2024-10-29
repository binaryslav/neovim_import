# Environment setup

1. **Remove tmp files and old configs** 

        sudo rm /usr/local/bin/nvim
        sudo rm -r /usr/local/share/nvim/

2. **Create ".config/nvim"**

        mkdir -p ~/.config/nvim

3. **[Download and install](https://www.nerdfonts.com/) any Nerd font (eg "Jetbrains mono")**

        mkdir ~/.local/share/fonts
        unzip SourceCodePro.zip -d ~/.local/share/fonts/
        fc-cache ~/.local/share/fonts

4. **Set a newely installed font as active on the terminal**
 
5. **Install additional dependencies**
<br>// Clipboard [providers](https://neovim.io/doc/user/provider.html) for Wayland(wl-clip) and X11(xclip)        

        sudo apt install wl-clip xclip

6. [**Install neovim**](https://github.com/neovim/neovim/wiki/Installing-Neovim)


# Import configuration 

        git clone https://github.com/iarosb/neovim_import.git ~/.config/nvim --depth 1


# Plugins overview

## **Core functionality:**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Telescope](https://github.com/nvim-telescope/telescope.nvim),<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Lspconfig](https://github.com/neovim/nvim-lspconfig),<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Cmp](https://github.com/hrsh7th/nvim-cmp),<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Treesitter + Treesitter-playground](https://github.com/nvim-treesitter/nvim-treesitter),<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Lazy.nvim](https://github.com/folke/lazy.nvim) - note that a project structure slightly differs from the one recommended by the LazyNvim devs<br>

## **Quality of life features:**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Harpoon](https://github.com/ThePrimeagen/harpoon) - environment-aware way of marking buffers for instant navigation between them<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Nvim-tree](https://github.com/nvim-tree) - better visual navigation in large projects<br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Zen-mode](https://github.com/folke/zen-mode.nvim) - instant switch between bird's eye view of your project and performing a code surgery<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Comment.nvim](https://github.com/numToStr/Comment.nvim) - toggle comments on selection<br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) - Git integration for buffers<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ibl](https://github.com/lukas-reineke/indent-blankline.nvim) - better indentation<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Lualine(bar)](https://github.com/nvim-lualine/lualine.nvim) - customizable bar full of useful widgets<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Fugitive](https://github.com/tpope/vim-fugitive) - Git integration for Vim<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Rhubarb](https://github.com/tpope/vim-rhubarb) - a plugin for fugitive.vim<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Sleuth](https://github.com/tpope/vim-sleuth) - Automatic detection for the |BufNewFile|, |BufReadPost|, and |BufFilePost| events.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Which-key](https://github.com/folke/which-key.nvim) - show Neovim-wide info on keybindings<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [lspkind](https://github.com/onsails/lspkind.nvim) - better LSP suggestion window(icons, color etc)<br>


# Utility functions and keymaps:

* [1] function SetTransparency(transparent bool)
        true    - sets "bg" to "none" making the desktop visibile
        false   - sets global colorcsheme as a provider for "bg" value<br>

* [2] <leader>bd - run ":bd" against all buffers but the one active. Respects unsaved changes<br>

# My workflow:

* Terminal access:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. :term  OR :terminal command<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. Tmux: open new pane  OR  open new window<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. Open a new terminal window to the side. Perfectly combines with tiling window managers<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. Open a floating terminal window: see projects like ["vim-floaterm"](https://github.com/voldikss/vim-floaterm)<br>

* FS navigation:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. Nvim-tree<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. Harpoon<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. :e path<br>

* Buffer management: 
* LSP:
