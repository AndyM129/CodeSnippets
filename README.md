# ![AndyM129/CodeSnippets](README.assets/logo.png)

## Introduction

* 常用的代码模板/片断

## Features

使用该库，可以在编码时 通过快捷输入 键入对应的代码片段/模板，以提升开发效率及质量，如：

* amk_cs_action_with_sender.codesnippet
* amk_cs_action_without_sender.codesnippet
* amk_cs_collection_view_data_source_protocol_implementation.codesnippet
* amk_cs_collection_view_delegate_flow_layput_protocol_implementation.codesnippet
* amk_cs_collection_view_delegate_protocol_implementation.codesnippet
* amk_cs_collection_view_lazyload.codesnippet
* amk_cs_collection_view_protocol.codesnippet
* amk_cs_define_if_elif_else_endif.codesnippet
* amk_cs_define_log_for_debug_with_time.codesnippet
* amk_cs_define_log_for_debug.codesnippet
* amk_cs_params_block_implementation.codesnippet
* amk_cs_params_block_interface.codesnippet
* amk_cs_pragma_mark_for_jxpager_list_view_controller.codesnippet
* amk_cs_pragma_mark_for_jxpager_view_controller.codesnippet
* amk_cs_pragma_mark_for_object.codesnippet
* amk_cs_pragma_mark_for_view_controller.codesnippet
* amk_cs_pragma_mark_for_view.codesnippet
* amk_cs_property_assign_readonly.codesnippet
* amk_cs_property_assign_readwrite.codesnippet
* amk_cs_property_collection_view.codesnippet
* amk_cs_property_strong_readonly.codesnippet
* amk_cs_property_strong_readwrite.codesnippet
* amk_cs_shape_layer_mask_by_rounding_corners.codesnippet
* amk_cs_shape_layer_mask.codesnippet
* amk_cs_strong_self.codesnippet
* amk_cs_table_view_data_source_protocol_implementation_for_editing.codesnippet
* amk_cs_table_view_data_source_protocol_implementation_for_index.codesnippet
* amk_cs_table_view_data_source_protocol_implementation.codesnippet
* amk_cs_table_view_delegate_protocol_implementation.codesnippet
* amk_cs_table_view_lazyload.codesnippet
* amk_cs_table_view_property.codesnippet
* amk_cs_table_view_protocol.codesnippet
* amk_cs_weak_self.codesnippet
* 及其他代码片段······

## Example



## Requirements

- 暂无

## Installation

可在任意路径下，通过终端执行以下命令，均会将代码片段安装该库到 Xcode 的目录下， 重启后即可生效使用：

```shell
curl -fsSL https://raw.githubusercontent.com/AndyM129/CodeSnippets/master/install.sh | sh
```

## How to use

### 调试模式

该模式下，会打印执行过程中的相关参数及调试信息：

```shell
curl -O https://raw.githubusercontent.com/AndyM129/CodeSnippets/master/install.sh && bash install.sh -d
```

示例：

```shell
Andys-MacBook-Pro-2018:~ mengxinxin$ curl -O https://raw.githubusercontent.com/AndyM129/CodeSnippets/master/install.sh && bash install.sh -d
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  3493  100  3493    0     0   1857      0  0:00:01  0:00:01 --:--:--  1857
----- variables -----
debug: true
edit: false
verbose: false

准备为您安装 CodeSnippets，路径为：/Users/mengxinxin/Library/Developer/Xcode/UserData/CodeSnippets
开始拉取最新的 CodeSnippets ...
Cloning into '/Users/mengxinxin/Library/Developer/Xcode/UserData/CodeSnippets.gitclone'...
remote: Enumerating objects: 26, done.
remote: Counting objects: 100% (26/26), done.
remote: Compressing objects: 100% (19/19), done.
remote: Total 89 (delta 17), reused 14 (delta 6), pack-reused 63
Unpacking objects: 100% (89/89), done.
moving codesnippets to dir:
	amk_cs_table_view_data_source_protocol_implementation_for_index.codesnippet
	amk_cs_table_view_data_source_protocol_implementation.codesnippet
	amk_cs_pragma_mark_for_view_controller.codesnippet
	amk_cs_collection_view_delegate_flow_layput_protocol_implementation.codesnippet
	amk_cs_table_view_data_source_protocol_implementation_for_editing.codesnippet
	amk_cs_table_view_property.codesnippet
	amk_cs_weak_self.codesnippet
	amk_cs_define_if_elif_else_endif.codesnippet
	amk_cs_property_strong_readonly.codesnippet
	amk_cs_collection_view_protocol.codesnippet
	amk_cs_collection_view_data_source_protocol_implementation.codesnippet
	amk_cs_property_strong_readwrite.codesnippet
	amk_cs_table_view_protocol.codesnippet
	amk_cs_shape_layer_mask.codesnippet
	amk_cs_collection_view_lazyload.codesnippet
	amk_cs_property_assign_readwrite.codesnippet
	amk_cs_collection_view_delegate_protocol_implementation.codesnippet
	amk_cs_table_view_lazyload.codesnippet
	amk_cs_action_with_sender.codesnippet
	amk_cs_pragma_mark_for_object.codesnippet
	amk_cs_pragma_mark_for_view.codesnippet
	amk_cs_pragma_mark_for_jxpager_view_controller.codesnippet
	amk_cs_property_assign_readonly.codesnippet
	amk_cs_action_without_sender.codesnippet
	amk_cs_shape_layer_mask_by_rounding_corners.codesnippet
	amk_cs_define_log_for_debug_with_time.codesnippet
	amk_cs_property_collection_view.codesnippet
	amk_cs_table_view_delegate_protocol_implementation.codesnippet
	amk_cs_params_block_implementation.codesnippet
	amk_cs_params_block_interface.codesnippet
	amk_cs_define_log_for_debug.codesnippet
	amk_cs_pragma_mark_for_jxpager_list_view_controller.codesnippet
	amk_cs_strong_self.codesnippet
已成功拉取最新的 CodeSnippets，须重启 Xcode 后生效。\n\n
Andys-MacBook-Pro-2018:~ mengxinxin$ 
```

### 编辑模式

该模式下，会备份已存在的代码片段目录，然后重新 clone 整个工程，以便编辑、新增工程文件：

```shell
curl -O https://raw.githubusercontent.com/AndyM129/CodeSnippets/master/install.sh && bash install.sh -e
```

示例：

```shell
Andys-MacBook-Pro-2018:~ mengxinxin$ curl -O https://raw.githubusercontent.com/AndyM129/CodeSnippets/master/install.sh && bash install.sh -e
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  3493  100  3493    0     0    503      0  0:00:06  0:00:06 --:--:--   751
准备为您安装 CodeSnippets，路径为：/Users/mengxinxin/Library/Developer/Xcode/UserData/CodeSnippets
CodeSnippets 文件夹存在，已为您进行备份：/Users/mengxinxin/Library/Developer/Xcode/UserData/CodeSnippets.bak2020061913371592545047
开始拉取最新的 CodeSnippets ...
Cloning into '/Users/mengxinxin/Library/Developer/Xcode/UserData/CodeSnippets'...
remote: Enumerating objects: 26, done.
remote: Counting objects: 100% (26/26), done.
remote: Compressing objects: 100% (19/19), done.
remote: Total 89 (delta 17), reused 14 (delta 6), pack-reused 63
Unpacking objects: 100% (89/89), done.
已成功拉取最新的 CodeSnippets，须重启 Xcode 后生效。\n\n
Andys-MacBook-Pro-2018:~ mengxinxin$ 
```



## Author

AndyMeng, andy_m129@163.com

## Collaboration
Feel free to collaborate with ideas, issues and/or pull requests.

## License

CodeSnippets is available under the MIT license. See the LICENSE file for more info.