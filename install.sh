#!/bin/bash

# -------------------- Copyright --------------------
# FileName: install.sh
# Description: Git clone and install Xcode CodeSnippets from https://github.com/AndyM129/CodeSnippets
# Version: 2.0
# Date: 2020/06/19
# Author: Andy Meng
# Email: andy_m129@163.com
# -------------------- History --------------------
# 2020/??/??: v1.0
# 2020/06/19: v2.0 - 优化、新增若干代码片段，并优化安装脚本
# -------------------- End --------------------



help() {
    echo "usage:"
    echo -e "\tbash $0 [-dehv]"
    echo "params:"
    echo -e "\t-d:\tEnabled debug mode."
    echo -e "\t-e:\tEnabled edit mode."
    echo -e "\t-h:\tShow help."
    echo -e "\t-v:\tEnabled verbose mode."
}


process() {
    # Xcode 下代码片段的路径
    xcode_codesnippets_path="$HOME/Library/Developer/Xcode/UserData/CodeSnippets"
    echo "准备为您安装 CodeSnippets，路径为：${xcode_codesnippets_path}"

    # 若目录已存在，则先备份
    if [ -d $xcode_codesnippets_path ];then

        # 当前时间
        current_datetime="`date +%Y%m%d%H%M%s`"

        # 备份路径
        xcode_codesnippets_bakpath="${xcode_codesnippets_path}.bak${current_datetime}"
        cp -r "$xcode_codesnippets_path" "$xcode_codesnippets_bakpath"
        echo "CodeSnippets 文件夹存在，已为您进行备份：${xcode_codesnippets_bakpath}"
    else 
        mkdir "$xcode_codesnippets_path"
    fi

    # 编辑模式 则重新clone整个工程，否则仅安装代码片段文件
    if $edit; then
        echo "开始拉取最新的 CodeSnippets ..."
        rm -rf "$xcode_codesnippets_path"
        git clone https://github.com/AndyM129/CodeSnippets.git $xcode_codesnippets_path
        echo "已成功拉取最新的 CodeSnippets，须重启 Xcode 后生效。\n\n"
    
    else
        echo "开始拉取最新的 CodeSnippets ..."
        xcode_codesnippets_gitclone_path="$HOME/Library/Developer/Xcode/UserData/CodeSnippets.gitclone"
        if [ -d $xcode_codesnippets_gitclone_path ];then
            rm -rf "$xcode_codesnippets_gitclone_path"
            $debug && echo -e "删除已存在的临时目录：$xcode_codesnippets_gitclone_path"
        fi

        git clone https://github.com/AndyM129/CodeSnippets.git $xcode_codesnippets_gitclone_path

        $debug && echo -e "moving codesnippets to dir:"  
        for file in `find $xcode_codesnippets_gitclone_path -name "*.codesnippet"`
        do
            mv "$file" "$xcode_codesnippets_path"
            $debug && echo -e "\t${file##*/}"
        done

        mv "$xcode_codesnippets_gitclone_path/install.sh" "$xcode_codesnippets_path"
        rm -rf "$xcode_codesnippets_gitclone_path"
        echo "已成功拉取最新的 CodeSnippets，须重启 Xcode 后生效。\n\n"
    fi
    
    exit 0;
}


main() {
    debug=false
    edit=false
    verbose=false

    while getopts "dehv" OPT; do
        case $OPT in
            d)
                debug=true
                ;;
            e)
                edit=true
                ;;
            v)
                verbose=true
                ;;
            
            h)
                help
                exit 0
                ;;
            ?)
                help
                exit 1
                ;;
        esac
    done

    if $debug; then
        echo "----- variables -----"
        echo -e "debug: $debug"
        echo -e "edit: $edit"
        echo -e "verbose: $verbose"
        echo
    fi

    process
}

main $@
