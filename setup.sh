#!/bin/bash

pushd dotfiles
rm -rf bin
mkdir bin
wget http://download.sysinternals.com/files/SysinternalsSuite.zip
mv SysinternalsSuite.zip bin
pushd bin
unzip SysinternalsSuite.zip
rm SysinternalsSuite.zip

git clone https://github.com/rupa/z.git
git clone https://github.com/JonasG/checklist.git

curl https://raw.github.com/sjl/peat/master/peat > peat && chmod 0755 peat
curl https://raw.github.com/sjl/friendly-find/master/ffind > ffind && chmod 0755 ffind

curl http://betterthangrep.com/ack-standalone > ack && chmod 0755 ack

curl https://raw.github.com/jakobi/script-archive/master/vim/pipe.vim > pipe.vim && chmod 0755 pipe.vim

git clone git://github.com/robbyrussell/oh-my-zsh.git

curl http://nongnu.org/ranger/ranger-stable.tar.gz > ranger-stable.tar.gz
tar -xzf ranger-stable.tar.gz
rm ranger-stable.tar.gz

popd
popd

cp -vR binaries/* dotfiles/bin

tar -czf unixconfig.tgz dotfiles
cp unixconfig.tgz /home/jonas/configs
