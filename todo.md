
   [] build from source
   [] custom project structure
   [] blend the primeagean's and tj's setups with some nvchad's polishing in the config folder
   [] tooling:
        [] 
        [] 
        [] 
        [] 
   [] colortheme, bars & indicators, icons fonts

? reset my nvim to the most default version possible: 

# Q&A

> Do I need nvchad?

    should I build it from scratch? probably...
        
    how null-ls being archived soon will affect my workflow? idk, would have to use lspconfig or null-ls analogues...
    
 

# Install dependencies:

sudo apt-get install ninja-build gettext cmake unzip curl

2. Clone Neovim repo:

git clone https://github.com/neovim/neovim.git

cd neovim

3. Checkout stable version (0.9.1):

git checkout v0.9.1

4. Build and install:

make CMAKE_BUILD_TYPE=Release

sudo make install
 
