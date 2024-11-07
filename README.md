# Description
This is my personal set up for Neovim, mostly doing this for a backup purpose, but feel free to copy.

Will update as time goes on.

## Quickstart Guide
These are the steps to get NeoVim set up on a new setup with my configuration.

1. install nvim

```
sudo apt install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim
```
2. Check to see if you installed nvim `nvim --version`
3. Create the config directory required by nvim

```
mkdir -p ~/.config
cd ~/.config
git clone https://github.com/marcellodotgg/nvim/tree/main
```

4. This setup requires packer, so we will need to install that

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

5. Verify that this works

```
ls ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

6. You will need to run `:PackerSync` to get the changes
7. Configure LSP and whatnot

```
sudo apt update
sudo apt install build-essential clang
sudo apt install libtool
```

8. Finally, run `:TSUpdate` to get the changes and everything should
be good to go!
