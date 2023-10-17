1. Set up worskapce:

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


4. PDE

        custom vim motions with a relation to neovim's default behavior

        language clients
        functionality profile(combination of plugins and language servers that are on)
