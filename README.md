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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Lazy.nvim](https://github.com/folke/lazy.nvim)<br>

## **Quality of life features:**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Harpoon](https://github.com/ThePrimeagen/harpoon) - to replace tabs(in general) and marks(Vim)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Nvim-tree](https://github.com/nvim-tree) - better visual navigation in large projects<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Zen-mode](https://github.com/folke/zen-mode.nvim) - instant switch between bird's eye view of your project and performing a code surgery<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Comment.nvim](https://github.com/numToStr/Comment.nvim)<br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ibl](https://github.com/lukas-reineke/indent-blankline.nvim)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Lualine(bar)](https://github.com/nvim-lualine/lualine.nvim)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Fugitive](https://github.com/tpope/vim-fugitive)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Rhubarb](https://github.com/tpope/vim-rhubarb)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Sleuth](https://github.com/tpope/vim-sleuth)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Which-key](https://github.com/folke/which-key.nvim)<br>

# Preconfigured motions & workflow

*Access terminal: term   || tmux <C-space>c

*Manage a buffer: 
                Telescope search || nvim-tree navigation || :e $PATH  
                mark it with Harpoon || ctrl -o/i for jumping back & forth || telescope search across opened buffers
                Harpoon for blazingly fast navigation between them(including closed ones) 
                :w || :bdelete/:q! for saving/cancelling changes to the buffer
        
*LSP:

*Writing code:
                Vim motions(
                        recording,
                        :norm(in visual mode),
                        vi{*} for smart selection or executing a command against a selected block of code,   
                        executing shell commands against a file or a block of code with piping technique,
