# FAQ

Some frequently asked questions.

## How to import table

[fcitx5-android#175](https://github.com/fcitx5-android/fcitx5-android/pull/175) adds the support of importing table based input method, so after `0.0.3-43`, you can import table with following steps:

1. Obtain the configuration file of the input method (the filename extension should be `.conf` or `.conf.in`) and table dictionary (the filename extension should be `.dict` or `.txt`) to be imported. Take "zhengma" as an example, you can download `zhengma.conf.in` and `zhengma.txt` at [fcitx/fcitx5-table-extra](https://github.com/fcitx/fcitx5-table-extra).
2. Open the App, navigate to Addons → Table (click the gear button on the right) → Manage Table Input Methods, and click the plus button in the lower right corner. Select the second term, i.e. "From separate files", in the dialog that pops up.
3. In the new dialog, click "Input method configuration file" and select `zhengma.conf.in` obtained in step 1; click "Table dictionary" and select `zhengma.txt` obtained in step 1; and click OK button.
4. A notification of "Importing zheng,a.conf.in" should be created by the App. If the files are correct, the operation may take a few seconds. Then, you will see "Zhengma" in the list.

## How to import table manually

In order to import a table manually, you need to have a correct input method configuration file `.conf` and convert the table dictionary in `.txt` form into `.dict` form using `libime_tabledict` command line tool.

1. Obtain the configuration file of the input method (the filename extension should be `.conf` or `.conf.in`) and table dictionary (the filename extension should be `.dict` or `.txt`) to be imported. Take "zhengma" as an example, you can download `zhengma.conf.in` and `zhengma.txt` at [fcitx/fcitx5-table-extra](https://github.com/fcitx/fcitx5-table-extra).
2. Open `zhengma.conf.in` with your favorite editor and modify the path specified after `[Table] File=` to `table/zhengma.dict`.
3. Run command `libime_tabledict zhengma.txt zhengma.dict` to convert the table dictionary. This tool is usually provided by package called `libime` or `libime-bin` among Linux distributions.
4. Copy modified `zhengma.conf` in step 2 to `/sdcard/Android/data/org.fcitx.fcitx5.android/files/data/inputmethod/`.
5. Copy converted `zhengma.dict` in step 3 to `/sdcard/Android/data/org.fcitx.fcitx5.android/files/data/table/`.
6. Restart the App (remove the task or just use force stop)

!!! warning

    Absolute paths above may not apply if you configured [work profile](https://developer.android.com/work/versions/android-11#work).
    We recommend using the builtin file manager (via DocumentsUI) to manage the data of Fcitx5 for Android.
    You can access the files in `/sdcard/Android/data/org.fcitx.fcitx5.android/files/` by selecting "Fcitx 5 for Android" in the sidebar of DocumentsUI. No third-party file manager/adb/root permission are required.

!!! note

    Create `inputmethod` and `table` if they don't exist.

## How to remove input method entry

Swipe left on the entry until the backgournd changes to red with a trash can icon.

[fcitx5-android#170](https://github.com/fcitx5-android/fcitx5-android/pull/170) adds multi-selecting deletion, so after `0.0.3-37`,
you can click the edit (pencil) button in top right corner of the input method list to enter the multi-selecting mode,
where checkbox will appear in the front of the input method name. You can check the input methods to be deleted,
and click the delete (trash can) button in the top right corner.

!!! hint

    The same operation applies to other list-like UI, such as pinyin dictionary, punctuation mapping, etc.

## How to adjust the order of input methods

Long press on the entry util a shadow appears below, and then drag the entry to change the order.

## How to modify uncommitted text

When preedit shows in the keyboard, you can swipe on the space key to move the cursor; If it shows in application,
you can move the cursor to the desired position directly by clicking.

!!! hint

    This is useful when composing long sentences or modifying already entered contents.

!!! note

    To make preedit shows in application, enable *Show preedit in application* in *Global Options* and *Pinyin*. Then, disable *Ignore system cursor position* in *Behavior*.
    If the cursor jumps to the left after a moving, please disable *Fix embedded preedit cursor at the beginning of the preedit* in *Pinyin*.

## How to reset the input state

To clear the preedit and candidates, press and hold the backspace key, swiping left for a distance.

## How to export configruation files or user dictionary

The configuration files, input history, and user dictionary are saved to the external storage. The default path is `/sdcard/Android/data/org.fcitx.fcitx5.android/files/`.
The input history and user dinctionary for Pinyin/Shuangpin are at `data/pinyin/user.{dict,history}`; those for Wubi are at `data/table/${name}.{dict,user.history}`.

!!! warning

    Absolute paths above may not apply if you configured [work profile](https://developer.android.com/work/versions/android-11#work).
    We recommend using the builtin file manager (via DocumentsUI) to manage the data of Fcitx5 for Android.
    You can access the files in `/sdcard/Android/data/org.fcitx.fcitx5.android/files/` by selecting "Fcitx 5 for Android" in the sidebar of DocumentsUI. No third-party file manager/adb/root permission are required.

## How to import Pinyin dictionary

Fcitx 5 supports custom pinyin dictionaries, which are stored in `data/pinyin/dictionaries`.
Fcitx 5 for Android registers three supported file types: `.dict`, `.scel`, and `.txt`, so you can import the the dictionary by opening the file with Fcitx5 for Android.

!!! hint

    You can also manage dictionaries using *Pinyin Dictionaries* in settings.

## What's the format of Pinyin dictionary

The pinyin dictionary to be imported has to be in one of the following three formats:

* [sougou scel dict](https://pinyin.sogou.com/dict/), a `.scel` file
* libime text format, a `.txt` file where word, full pinyin, and weight form into three columns, e.g.
      ```
        拼音	pin'yin	0
      ```
* libime binary format, a `.dict` file which can be converted from text format using command line tool `libime_pinyindict`

We recommend using `.txt` format if you want to make your own dictionary.

!!! note

     When importing `.scel` or `.txt` dictionary, it will be automatically converted into `.dict` format.

!!! hint

    You may refer to the builtin [emoji dictionary](https://github.com/fcitx/fcitx5-chinese-addons/blob/5.0.16/im/pinyin/emoji.txt) as an example of libime text format.

!!! hint

    Some third-party pinyin dictionaries may provide libime binary format ready to be imported, such as [fcitx5-pinyin-zhwiki](https://github.com/felixonmars/fcitx5-pinyin-zhwiki) and [mw2fcitx](https://github.com/outloudvi/mw2fcitx).

## How to input emoticon, emoji, or specific unicode symbol

Press and hold `,` key, swiping towards one of the three icons popped up.

<center><img src="/assets/emoji-01.jpeg" alt="drawing" width="400"/></center>

The first icon actives unicode mode. You can search unicode by code or description:

<center><img src="/assets/unicode-01.jpeg" alt="drawing" width="400"/></center>

!!! hint

    You can find the details of unicode symbols at [Unicode Character Table](https://unicode-table.com/en/)  or [List of Unicode characters](https://en.wikipedia.org/wiki/List_of_Unicode_characters).

The second icon switches to emoji keyboard:

<center><img src="/assets/emoji-02.jpeg" alt="drawing" width="400"/></center>

The `:-)` key below switches to emoticon keyboard.

The third icon actives quick phrase:

<center><img src="/assets/quick-input-01.jpeg" alt="drawing" width="400"/></center>

## How to fix the keyboard overlapping with the navigation bar

The keyboard may overlap with the navigation bar on some specific devices:

<center><img src="/assets/overlap.jpg" alt="drawing" width="400"/></center>

The reason is not clear, but it can be fixed by setting *Navigation bar background* to *Follow keyboard color* in Theme settings.

## What is "Activate By Default" in "Global Options"

## What is "Share Input State" in "Global Options"

This feature allows you to share the input context (mostly the active input method) between Apps. There are three options:

- All: always use same input method when switching between Apps
- Program: remember last used input method for each App
- No: this is the default value. On Android, there is only one *InputContext* for each App, this option behaves exactly the same as *Program*
