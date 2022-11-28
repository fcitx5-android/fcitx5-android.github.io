# 常见问题

一些可能经常遇到的问题。

## 如何手动导入码表

以导入[郑码](https://github.com/fcitx/fcitx5-table-extra)为例：

1. 获取 `zhengma.conf` 与 `zhengma.main.dict` 两个文件
2. 将 `zhengma.dict` 添加至 `/Android/data/org.fcitx.fcitx5.android/files/data/table/` 目录
3. 将 `zhengma.conf` 中 `[Table] File=` 的路径改为 `table/zhengma.dict`
4. 将修改好的 `zhengma.conf` 添加至 `/Android/data/org.fcitx.fcitx5.android/files/data/inputmethod/` 目录

!!! warning

    若您配置了[工作资料](https://developer.android.com/work/versions/android-11#work)，则上述路径可能不适用。您可以通过系统内置文件管理器来管理 Fcitx5 for Android 的数据文件。

!!! note

    若 `table` 或 `data` 目录不存在，请创建。

## 如何移除输入法

向左滑动条目，直至其背景变为带有垃圾桶图标的红色。

同样的操作适用于其他类似的、具有列表结构界面设计，例如拼音词典、标点映射等等。

## 如何调整输入法顺序

长按输入法条目，直至其下方出现阴影，此时不要松手，上下拖动即可改变顺序。

## 如何修改已经输入但未提交的文本

当预编辑文本 (preedit) 在键盘中显示时，您可以通过滑动空格键来移动光标；当它在应用的文本框内显示时，您可以直接通过点击使光标移动到需要的位置。

!!! hint

    这在编写长句子、需要修改已经输入的内容时十分有用。

!!! note

    要启用应用内预编辑，请在 *全局选项 (Global Options)* 以及拼音设置中启用 *在程序中展示预编辑文本 (Show preedit in application)*，并在 *行为 (Behavior)* 中关闭 *忽略系统光标位置 (Ignore system cursor position)*。
    如果移动光标后，光标会自动跳回左侧，请禁用拼音设置中的 *将嵌入预编辑文本的光标固定在开头 (Fix embedded preedit cursor at the beginning of the preedit)*。

按住退格键并向左划动一段距离后松手，可以重置输入状态，快速清空预编辑文本及候选词。

## 如何导出配置文件/用户词库

fcitx5 的配置文件、输入历史及用户词库存储在设备外置存储中，路径为 `/sdcard/Android/data/org.fcitx.fcitx5.android/files/` 。拼音和双拼输入法的用户词库/输入历史保存在 `data/pinyin/user.{dict,history}` ，五笔等码表输入法为 `data/table/${name}.{dict,user.history}` 。

使用系统内置文件管理器 (DocumentsUI)，在侧边栏中选择本应用的名称，也可以直接访问上述目录中的文件。

## 如何为拼音输入法导入第三方词库

fcitx5 支持使用第三方[词库](https://wiki.archlinux.org/title/Fcitx5_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)#%E8%AF%8D%E5%BA%93)。第三方词库的 *.dict 文件也存储在与用户词库相同的目录下，路径是 ``data/pinyin/dictionaries`。

你也可以在拼音输入法的设置界面中，点击`词库`，然后再点击右下方的加号手动添加第三方词库。

## 如何输入颜文字、emoji 符号与特定的 unicode 符号

按住键盘左下方的 `,` 键，然后将手指滑向上方出现的三个按钮之一

<center><img src="/assets/emoji-01.jpeg" alt="drawing" width="400"/></center>

第一个图标会启动 Unicode，用于输入编码或者描述来搜索 Unicode 字符：

<center><img src="/assets/unicode-01.jpeg" alt="drawing" width="400"/></center>

相关的 Unicode 字符代号可参考：[Unicode Character Table](https://unicode-table.com/en/) 和 [Unicode 字符列表](https://zh.m.wikipedia.org/zh-cn/Unicode%E5%AD%97%E7%AC%A6%E5%88%97%E8%A1%A8)

第二个图标会打开 emoji 列表：

<center><img src="/assets/emoji-02.jpeg" alt="drawing" width="400"/></center>

点击左下方的 `:-)` 可以切换至颜文字列表。

第三个图标会激活快速输入功能：

<center><img src="/assets/quick-input-01.jpeg" alt="drawing" width="400"/></center>