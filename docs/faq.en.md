# FAQ

Some frequently asked questions.

## How to import table manually

Take importing [zhengma](https://github.com/fcitx/fcitx5-table-extra) as an example:

1. Obtain `zhengma.conf` and `zhengma.main.dict`
2. Copy `zhengma.dict` to `/Android/data/org.fcitx.fcitx5.android/files/data/table/`
3. In `zhengma.conf`, change the path specified after `[Table] File=` to `table/zhengma.dict`
4. Copy modified `zhengma.conf` to `/Android/data/org.fcitx.fcitx5.android/files/data/inputmethod/`

!!! warning

    Above paths may not apply if you configured [work profile](https://developer.android.com/work/versions/android-11#work).
    We recommend using the builtin file manager (via DocumentsUI) to manage the data of Fcitx5 for Android.

!!! note

    Create `table` and `data` directories if they don't exist.

## How to remove input method entry

Swipe left on the entry until the backgournd changes to red with a trash can icon.

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

    Abosolute path above may not apply if you configured [work profile](https://developer.android.com/work/versions/android-11#work).
    We recommend using the builtin file manager (via DocumentsUI) to manage the data of Fcitx5 for Android.


## How to import Pinyin dictionary

Fcitx 5 supports custom dictionaries. They are stored in `data/pinyin/dictionaries`.
Fcitx 5 for Android registers three supported file types: `.dict`, `.scel`, and `.txt`, so uou can import the the dictionary by opening the file with Fcitx5 for Android.
You can also manage the dictionary using *Pinyin Dictionaries* in settings.

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
