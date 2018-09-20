#!/usr/bin/env bash
# ====================================================
#   Copyright (C)2018 All rights reserved.
#
#   Author        : Frank
#   Email         : zhaoyyuu@gmail.com
#   File Name     : install.sh
#   Last Modified : 2018-09-20 14:59
#   Describe      : vim一键安装脚本
#
# ====================================================


function recho()
{
    echo -e "\033[31;1m $1 \033[0m";
}
function gecho()
{
    echo -e "\033[32;1m $1 \033[0m";
}
#检查脚本执行用户
home_dir="/home/${USER}";
vimrc="${home_dir}/.vimrc";
if [ -f ${vimrc} ]; then
    mv ${vimrc} ${home_dir}/vimrc_back;
    recho ${vimrc};
fi
vim_dir="${home_dir}/.vim";
if [ -d ${vim_dir} ]; then
    mv ${vim_dir} ${home_dir}/vim_back;
fi
git clone https://github.com/VundleVim/Vundle.vim.git ${home_dir}/.vim/bundle/Vundle.vim
cp src/.vimrc ~/ > /dev/null
cp -r src/.vim ~/ > /dev/null
gecho "OK"
exit 0;
