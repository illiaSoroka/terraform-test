#!/bin/bash
git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH=$PATH:$HOME/.tfenv/bin' >> ~/.bashrc
  ln -s ~/.tfenv/bin/* $HOME/bin