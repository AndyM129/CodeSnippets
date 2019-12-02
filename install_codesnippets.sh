#!/bin/sh

debug=flase

# Xcode 下代码片段的路径
xcode_codesnippets_path="$HOME/Library/Developer/Xcode/UserData/CodeSnippets"
if [ $debug == true ];then
    xcode_codesnippets_path="$HOME/Desktop/CodeSnippets"
fi
echo "\n准备为您安装 CodeSnippets，路径为：${xcode_codesnippets_path}"

# 若目录已存在，则先备份
if [ -d $xcode_codesnippets_path ];then

    # 当前时间
    current_datetime="`date +%Y%m%d%H%M%s`"
    if [ $debug == true ];then
        echo "当前时间：$current_datetime"
    fi

    # 备份路径
    xcode_codesnippets_bakpath="${xcode_codesnippets_path}.bak${current_datetime}"
	mv "$xcode_codesnippets_path" "$xcode_codesnippets_bakpath"
	echo "CodeSnippets 文件夹存在，已为您进行备份：${xcode_codesnippets_bakpath}"
fi

# 拉取最新代码片段
echo "\n开始拉取最新的 CodeSnippets ..."
git clone https://github.com/AndyM129/CodeSnippets.git $xcode_codesnippets_path
echo "已成功拉取最新的 CodeSnippets，须重启 Xcode 后生效。\n\n"
