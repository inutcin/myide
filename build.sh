###############################################################################
# Установка VIM из исходников c подержкой python3
###############################################################################
git clone https://github.com/vim/vim.git /tmp/vim

cd /tmp/vim

./configure \
--enable-perlinterp \
--enable-python3interp \
--enable-rubyinterp \
--enable-cscope \
--enable-gui=auto \
--enable-gtk2-check \
--enable-gnome-check \
--with-features=huge \
--enable-multibyte \
--with-compiledby="xorpd" \
--prefix=/opt/vim74

make

make test

make install 

sudo ln -s /opt/vim74/bin/vim /usr/bin/vim-py3


