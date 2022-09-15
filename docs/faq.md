# 常见问题

一些可能经常遇到的问题。

## 如何手动导入码表

以导入[郑码](https://github.com/fcitx/fcitx5-table-extra)为例：

1. 获取 `zhengma.conf` 与 `zhengma.main.dict` 两个文件
2. 将 `zhengma.dict` 添加至 `/Android/data/org.fcitx.fcitx5.android/files/data/table/` 目录
3. 将 `zhengma.conf` 中 `[Table] File=` 的路径改为 `table/zhengma.dict`
4. 将修改好的 `zhengma.conf` 添加至 `/Android/data/org.fcitx.fcitx5.android/files/data/inputmethod/` 目录

!!! warning

    若您配置了[工作资料](https://developer.android.com/work/versions/android-11#work)，则上述路径可能不适用。您总是可以通过系统内置文件管理器来轻松管理 Fcitx5 for Android 的数据文件。

!!! note

    若 `table` 或 `data` 目录不存在，请创建。

## 如何移除输入法

向左滑动条目。同样的操作适用于其他类似的界面设计（具有列表结构的配置）：例如拼音词典、标点映射等等。

## 如何修改已经输入但未提交的文本

当预编辑 (preedit) 在键盘中展示时，您可以通过滑动空格键来移动光标；当它在应用内展示时，您可以直接通过点击使光标移动到需要的位置。

!!! hint

    这在编写长句需要修改已经输入的内容时十分有用。

!!! note

    要启用应用内预编辑，请在 *全局选项 (Global Options)* 以及拼音设置中启用 *在程序中展示预编辑文本 (Show preedit in application)*，并在 *行为 (Behavior)* 中关闭 *忽略系统光标位置 (Ignore system cursor position)*。

## 为什么在有候选词时点击符号键盘中的数字会触发选词提交

`?123` 符号键盘中第一行的数字键被映射到了桌面键盘字母键区上的那一行数字键，因此会触发选词。

!!! note

    拼音设置中的 *数字键盘选词 (Use Keypad as Selection key)* 的数字键盘指的是数字小键盘 `KP_*`，与符号键盘中的这一行数字键无关。
