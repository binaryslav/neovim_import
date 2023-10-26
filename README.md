# Environment setup:

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
 
5. [**Install neovim**](https://github.com/neovim/neovim/wiki/Installing-Neovim)

# Import configuration 

        git clone https://github.com/iarosb/neovim_import.git ~/.config/nvim --depth 1

# Plugins overview:   

**Core functionality:**
                telescope,
                lspconfig,
                cmp,
                treesitter + treesitter-playground,
                lazy.nvim 

[Harpoon](https://github.com/ThePrimeagen/harpoon) to replace tabs(in general) & marks(Vim) 
[Nvim-tree](https://github.com/nvim-tree) for better visual navigation in large projects
[Zen-mode](https://github.com/folke/zen-mode.nvim) - better focus on the task and less fatigue from work 
**Quality of life features:**
                comment.nvim,
                gitsigns,
                ibl(indentation),
                lualine(bar),
                fugitive,
                rhubarb,
                sleuth,
                which-key

# Preconfigured motions & workflow:

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


