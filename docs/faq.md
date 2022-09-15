# 常见问题

一些可能经常遇到的问题。

## 如何手动导入码表

以导入[郑码](https://github.com/fcitx/fcitx5-table-extra)为例：

1. 获取 `zhengma.conf` 与 `zhengma.main.dict` 两个文件
2. 将 `zhengma.dict` 添加至 `/Android/data/org.fcitx.fcitx5.android/files/data/table/` 文件夹
3. 将 `zhengma.conf` 中 `[Table] File=` 的路径改为 `table/zhengma.dict`
4. 将修改好的 `zhengma.conf` 添加至 `/Android/data/org.fcitx.fcitx5.android/files/data/inputmethod/`

!!! warning

    若您配置了[工作资料](https://developer.android.com/work/versions/android-11#work)，则上述路径可能不适用。您总是可以通过系统内置文件管理器来轻松管理 Fcitx5 for Android 的数据文件。

!!! note

	请创建 `table` 或 `data` 目录如果它们不存在。

## 如何移除输入法

向左滑动条目。同样的界面设计适用于其他具有列表结构的配置，例如拼音词典、标点映射等等。

## 如何修改已经输入但未提交的文本

例如您在编写长句时想修改已经输入的内容。当预编辑 (preedit) 在键盘中展示时，您可以通过滑动空格键来移动光标；当它在应用内展示时，您可以直接通过点击使光标移动到需要的位置。

!!! hint

	要启用应用内预编辑，请在 *全局选项 (Global Options)* 以及拼音设置中启用 *在程序中展示预编辑文本 (Show preedit in application)*，并在 *行为 (Behavior)* 中关闭 *忽略系统光标位置 (Ignore system cursor position)*。

