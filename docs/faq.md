# 常见问题

一些可能经常遇到的问题。

## 如何导入码表

[fcitx5-android#175](https://github.com/fcitx5-android/fcitx5-android/pull/175) 中新增了码表输入法导入功能，`0.0.3-43` 及之后的版本可以使用以下方法快速导入码表：

1. 获取输入法配置文件（拓展名为 `.conf` 或 `.conf.in`）及码表词典（拓展名为 `.dict` 或 `.txt`）。以“郑码“为例，可以在 [fcitx/fcitx5-table-extra](https://github.com/fcitx/fcitx5-table-extra) 仓库中下载 `zhengma.conf.in` 及 `zhengma.txt`。
2. 打开输入法设置界面，选择 附加组件 → 码表（点击右侧的齿轮图标打开设置） → 管理码表输入法，点击右下角加号按钮，在弹出的对话框“导入码表”中选择第二项“从单独的文件中导入”。
3. 在新弹出的对话框中，点击“码表输入法配置文件”，并选择第 1 步中下载的 `zhengma.conf.in`；点击“码表词典”，选择第 1 步中下载的 `zhengma.txt`。确认文件选择无误后，点击“确定”按钮。
4. 应用会弹出“正在导入 zhengma.conf.in”的通知。如果配置文件及词典均无误，数秒后对话框会自动关闭，同时列表中出现“Zhengma”字样，导入完成。

## 如何手动导入码表

手动导入码表，需要编写正确的输入法配置文件 `.conf`，并且使用 `libime_tabledict` 命令行工具把 `.txt` 格式的词典转换为 `.dict` 格式。具体步骤如下：

1. 获取输入法配置文件（拓展名为 `.conf`）及码表词典（拓展名为 `.dict` 或 `.txt`）。以“郑码“为例，可以在 [fcitx/fcitx5-table-extra](https://github.com/fcitx/fcitx5-table-extra) 仓库中下载 `zhengma.conf.in` 及 `zhengma.txt`。
2. 用文本编辑器打开 `zhengma.conf.in`，找到 `[Table]` 分段中的 `File=` 键，将其对应的值（等号 `=` 后面的部分）改为 `table/zhengma.dict`。将修改后的文件重命名为 `zhengma.conf`（去掉后缀的 `.in`）。
3. 运行命令 `libime_tabledict zhengma.txt zhengma.dict`，转换词典格式。此工具在 Linux 发行版仓库中的包名一般为 `libime` 或 `libime-bin`。
4. 把第 2 步修改好的 `zhengma.conf` 复制到手机 `/sdcard/Android/data/org.fcitx.fcitx5.android/files/data/inputmethod/` 目录。
5. 把第 3 步转换后的 `zhengma.dict` 复制到手机 `/sdcard/Android/data/org.fcitx.fcitx5.android/files/data/table/` 目录。
6. 重启输入法（把输入法设置界面的卡片从后台划掉，或直接强行停止）。

!!! warning

    若您配置了[工作资料](https://developer.android.com/work/versions/android-11#work)，则上述绝对路径可能不适用。
    我们推荐您使用系统内置文件管理器（通过 DocumentsUI）来管理小企鹅输入法5的数据文件。
    在 DocumentsUI 的侧边栏中，选择“小企鹅输入法5”，即可直接访问 `/sdcard/Android/data/org.fcitx.fcitx5.android/files/` 目录中的文件，不需要借助第三方文件管理器，也不需要使用 adb 或者 root 权限。

!!! note

    若 `inputmethod` 或 `table` 目录不存在，请新建对应名称的文件夹。

## 如何移除输入法

向左滑动条目，直至其背景变为带有垃圾桶图标的红色。

[fcitx5-android#170](https://github.com/fcitx5-android/fcitx5-android/pull/170) 中新增了多选删除功能，`0.0.3-37` 及之后的版本，可以点击输入法列表界面右上角的编辑（铅笔）图标，进入多选模式，此时输入法名称前面会出现复选框，选中要删除的输入法后，再点击右上角的删除（垃圾桶）图标即可批量删除。

!!! hint

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

## 如何重置输入状态

按住退格键并向左划动一段距离后松手，可以重置输入状态、清空预编辑文本及候选词。

## 如何导出配置文件/用户词库

Fcitx 5 的配置文件、输入历史及用户词库存储在设备外置存储中，路径为 `/sdcard/Android/data/org.fcitx.fcitx5.android/files/` 。拼音和双拼输入法的用户词库/输入历史保存在 `data/pinyin/user.{dict,history}` ，五笔等码表输入法为 `data/table/${name}.{dict,user.history}` 。

!!! warning

    若您配置了[工作资料](https://developer.android.com/work/versions/android-11#work)，则上述绝对路径可能不适用。
    我们推荐您使用系统内置文件管理器（通过 DocumentsUI）来管理小企鹅输入法5的数据文件。
    在 DocumentsUI 的侧边栏中，选择“小企鹅输入法5”，即可直接访问 `/sdcard/Android/data/org.fcitx.fcitx5.android/files/` 目录中的文件，不需要借助第三方文件管理器，也不需要使用 adb 或者 root 权限。

## 如何为拼音输入法导入第三方词库

Fcitx 5 支持使用第三方[词库](https://wiki.archlinux.org/title/Fcitx5_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)#%E8%AF%8D%E5%BA%93)。第三方词库的 *.dict 文件也存储在与用户词库相同的目录下，路径是 `data/pinyin/dictionaries`。小企鹅输入法5注册了 `.dict`、 `.scel`，以及 `.txt` 文件打开打开方式，因此您可以直接用应用打开词典文件来导入。

!!! hint

    您也可以在拼音输入法的设置界面中使用 *词库 (Pinyin Dictionaries)* 来管理添加的词库。

## 拼音词库的格式是什么

要导入的拼音字典必须是以下三种格式之一：

* [搜狗细胞词库](https://pinyin.sogou.com/dict/)，拓展名为 `.scel`
* libime 文本格式，一个 `.txt` 文件，其中单词、全拼和权重按照
    ```
     拼音	pin'yin	0
     词条	全拼	权重
    ```
    排成三列
* libime 二进制格式，一个 `.dict` 文件，可以用命令行工具 `libime_pinyindict` 从文本格式转换而来

如果您想制作你自己的字典，我们建议使用 `.txt` 格式。

!!! note

    当导入 `.scel` 或 `.txt` 字典时，它将被自动转换为 `.dict` 格式。

!!! hint

    具体 libime 文本格式的例子您可以参考内置的 [emoji 词典](https://github.com/fcitx/fcitx5-chinese-addons/blob/5.0.16/im/pinyin/emoji.txt)。

!!! hint

    一些第三方词库可能会提供 libime 二进制格式，比如 [fcitx5-pinyin-zhwiki](https://github.com/felixonmars/fcitx5-pinyin-zhwiki) 和 [mw2fcitx](https://github.com/outloudvi/mw2fcitx)。

## 如何输入颜文字、emoji 符号与特定的 unicode 符号

按住键盘左下方的 `,` 键，然后将手指滑向上方出现的三个按钮之一

<center><img src="/assets/emoji-01.jpeg" alt="drawing" width="400"/></center>

第一个图标会启动 Unicode，用于输入编码或者描述来搜索 Unicode 字符：

<center><img src="/assets/unicode-01.jpeg" alt="drawing" width="400"/></center>

!!! hint
    相关的 Unicode 字符代号可参考 [Unicode Character Table](https://unicode-table.com/en/) 和 [Unicode 字符列表](https://zh.m.wikipedia.org/zh-cn/Unicode%E5%AD%97%E7%AC%A6%E5%88%97%E8%A1%A8)。

第二个图标会打开 emoji 列表：

<center><img src="/assets/emoji-02.jpeg" alt="drawing" width="400"/></center>

点击左下方的 `:-)` 可以切换至颜文字列表。

第三个图标会激活快速输入功能：

<center><img src="/assets/quick-input-01.jpeg" alt="drawing" width="400"/></center>

## 如何修复键盘与导航栏重叠的问题

在一些特定的设备上，键盘可能会与导航栏重叠：

<center><img src="/assets/overlap.jpg" alt="drawing" width="400"/></center>

问题的原因尚不清楚，但您可以通过在主题设置中将 *导航栏背景 (Navigation bar background)* 设置为 *跟随键盘背景色 (Follow keyboard color)* 来修复。

## “全局选项”中的“默认状态为激活”是什么

保持英文输入法在第一个的状态下，让首次打开键盘时的输入法状态为中文（即“激活”状态，一般情况下为第二个输入法）。在桌面上，英文输入法反映的是键盘布局，因此要放到第一个；在需要默认的输入状态是中文的情况下，才需要用这个选项。在手机上，如果需要默认输入状态为中文，也可以将中文输入法拖动至列表的首位。

## “全局选项”中的“共享输入状态”是什么

这个特性允许您在应用之间共享输入状态（主要是当前激活的输入法）。它提供三个选项：

- 所有 (All)：在不同的应用之间切换时，总是使用相同的输入法
- 程序 (Program)：为每个应用记住当前激活的输入法
- 否 (No)：此项为默认值。在 Android 上，每个程序只有一个 *输入上下文 (InputContext)*，因此此项的作用与 *程序 (Program)* 完全相同

## 如何自定义 OpenCC 转换配置？

打开 `简繁转换` 页面，转换引擎设置为`OpenCC`。

配置简转繁, 修改`简转繁的 OpenCC配置`：

- `s2hk.json` 简体到香港繁体
- `s2t.json` 简体到繁体
- `s2tw.json` 简体到台湾正体
- `s2twp.json` 简体到繁体（台湾正体标准）并转换为台湾常用词汇

配置繁转简, 修改`简转繁的 OpenCC配置`：

- `hk2s.json` 香港繁体到简体
- `hk2t.json` 香港繁体到繁体（OpenCC 标准）
- `jp2t.json` 日文新字体到繁体（OpenCC 标准，旧字体）
- `t2hk.json` 繁体（OpenCC 标准）到香港繁体
- `t2jp.json` 繁体（OpenCC 标准，旧字体）到日文新字体
- `t2s.json` 繁体到简体
- `t2tw.json` 繁体（OpenCC 标准）到台湾正体
- `tw2s.json` 台湾正体到简体
- `tw2sp.json` 繁体（台湾正体标准）到简体并转换为中国大陆常用词汇
- `tw2t.json` 台湾正体到繁体（OpenCC 标准）

