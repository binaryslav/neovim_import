1. Environment setup:

// Remove tmp files and old configs 

        sudo rm /usr/local/bin/nvim
        sudo rm -r /usr/local/share/nvim/

// Create .config/nvim

        mkdir -p ~/.config/nvim

// Download and install any Nerd font(: "Jetbrains mono") && set as active on the terminal

        mkdir ~/.local/share/fonts
        unzip SourceCodePro.zip -d ~/.local/share/fonts/
        fc-cache ~/.local/share/fonts

 
2. Install neovim

        sudo snap install nvim --classic

3. Import configuration 

        git clone https://github.com/iarosb/neovim_import.git ~/.config/nvim --depth 1

4. Plugins overview:   

        1) Core functionality: 
                telescope,
                lspconfig,
                cmp,
                treesitter + treesitter-playground,
                lazy.nvim 

        2) Haproon to replace tabs(in general) & marks(Vim) 
        3) Nvim-tree for better visual navigation in large projects
        4) Zen-mode - better focus on the task and less fatigue from work 
        5) Quality of life features:
                comment.nvim,
                gitsigns,
                ibl(indentation),
                lualine(bar),
                fugitive,
                rhubarb,
                sleuth,
                which-key

5. Preconfigured motions & workflow:

       Access terminal: term   || tmux <C-space>c

       Manage a buffer: 
                Telescope search || nvim-tree navigation || :e $PATH  
                mark it with Harpoon || ctrl -o/i for jumping back & forth || telescope search across opened buffers
                Harpoon for blazingly fast navigation between them(including closed ones) 
                :w || :bdelete/:q! for saving/cancelling changes to the buffer
        
        LSP:

        Writing code:
                Vim motions(
                        recording,
                        :norm(in visual mode),
                        vi{*} for smart selection or executing a command against a selected block of code,   
                        executing shell commands against a file or a block of code with piping technique,


