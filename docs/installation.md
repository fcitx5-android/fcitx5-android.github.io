# 安装

## 稳定发布版

您可以通过 GitHub Release / F-Droid / Google Play 这三种渠道获取稳定版本的 fcitx5-android 。

!!! note

    fcitx5-android 实现了[可重复构建](https://f-droid.org/zh_Hans/docs/Reproducible_Builds/) ([reproducible build](https://f-droid.org/en/docs/Reproducible_Builds/))，因此 GitHub Release 与 F-Droid 下载的 apk 可以互相覆盖安装。然而由于 Google Play 政策的限制， Google Play 的版本无法与上述版本覆盖安装。

GitHub: [![release version](https://img.shields.io/github/v/release/fcitx5-android/fcitx5-android)](https://github.com/fcitx5-android/fcitx5-android/releases)

[<img src="https://fdroid.gitlab.io/artwork/badge/get-it-on.png" alt="Get it on F-Droid" width="207" height="80">](https://f-droid.org/packages/org.fcitx.fcitx5.android)
[<img alt="Get it on Google Play" src="https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png" width="207" height="80">](https://play.google.com/store/apps/details?id=org.fcitx.fcitx5.android)

## 最新 CI 构建版

您可以在 [Jenkins](https://jenkins.fcitx-im.org/job/android/job/fcitx5-android/) 上下载到最新构建的 apk ，或者通过 [更新器](#_2) 来下载并管理版本。

## 更新器

[fcitx5-android-updater](https://github.com/fcitx5-android/fcitx5-android-updater) 是一个独立的应用，它可以从 Jenkins 上下载和安装最近几次构建的 apk 安装包，包括插件及更新器本身。

更新器也可以从 Jenkins 上下载： https://jenkins.fcitx-im.org/job/android/job/fcitx5-android-updater/
