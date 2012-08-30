#!/bin/bash

rm -rf bin
mkdir bin
wget http://download.sysinternals.com/files/SysinternalsSuite.zip
mv SysinternalsSuite.zip bin
cd bin
unzip SysinternalsSuite.zip
rm SysinternalsSuite.zip

git clone https://github.com/rupa/z.git

curl http://betterthangrep.com/ack-standalone > ack && chmod 0755 ack

curl https://raw.github.com/jakobi/script-archive/master/vim/pipe.vim > pipe.vim && chmod 0755 pipe.vim
