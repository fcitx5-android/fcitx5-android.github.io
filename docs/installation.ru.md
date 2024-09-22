# Установка

## Тегированные релизы

Вы можете получить стабильную версию fcitx5-android из GitHub Release / F-Droid / Google Play.

!!! примечание

    fcitx5-android реализует [воспроизводимую сборку](https://f-droid.org/en/docs/Reproducible_Builds/), таким образом, apk из GitHub Release и F-Droid могут переопределять друг друга. Однако из-за ограничений Google Play, версия из Google Play не может быть переопределена другими версиями.

GitHub: [![релизная версия](https://img.shields.io/github/v/release/fcitx5-android/fcitx5-android)](https://github.com/fcitx5-android/fcitx5-android/releases)

[<img src="https://fdroid.gitlab.io/artwork/badge/get-it-on.png" alt="Get it on F-Droid" width="207" height="80">](https://f-droid.org/packages/org.fcitx.fcitx5.android)
[<img alt="Get it on Google Play" src="https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png" width="207" height="80">](https://play.google.com/store/apps/details?id=org.fcitx.fcitx5.android)

## Последняя сборка CI

Вы можете загрузить последнюю сборку из [Jenkins](https://jenkins.fcitx-im.org/job/android/job/fcitx5-android/). Также есть [Updater](#updater) для загрузки и управления установкой.

## Updater

[fcitx5-android-updater](https://github.com/fcitx5-android/fcitx5-android-updater) — это независимое приложение, которое загружает и устанавливает apk-файлы из Jenkins, включая плагины и сам updater.

Вы также можете загрузить updater из Jenkins: [fcitx5-android-updater [android] [Jenkins]](https://jenkins.fcitx-im.org/job/android/job/fcitx5-android-updater/)
