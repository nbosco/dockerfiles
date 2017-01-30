FROM ubuntu:14.04

MAINTAINER hello.nbosco@gmail.com

# Install Python
RUN apt-get update && apt-get install -y --no-install-recommends \
    python \
    python-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/ \
    
    # Install Git
    apt-get install git \
    
    # Install vim
    apt-get install vim \
    echo "runtime vimrc" > ~/.vimrc && mkdir ~/.vim && cd ~/.vim && git clone https://github.com/nbosco/vim_starter_kit.git . && git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall \

    # Install pip and virtual environment 
    apt-get install python-pip build-essential \
    pip install --upgrade pip \
    pip install --upgrade virtualenv 
