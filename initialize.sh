#!/bin/sh

#!/usr/bin/env bash
# Command Line Tools for Xcode
xcode-select -print-path > /dev/null
if [ ! $? = 0 ]; then
    xcode-select --install
    while true
    do
        xcode-select -print-path > /dev/null
        if [ $? = 0 ]; then
            break
        fi
        sleep 10
    done
fi

## Global
# 起動音を消す
sudo nvram SystemAudioVolume=%80
# Fuキーを標準のファンクションキーとして使用
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true
# 起動時に前回開いたウィンドウを開かない
defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool false
defaults write com.apple.QuickTimePlayerX NSQuitAlwaysKeepsWindows -bool false


## Finder関連
# 隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles true
# クイックルック内のテキストをコピーする
defaults write com.apple.finder QLEnableTextSelection -bool true
killall Dock
killall Finder

## マウス
defaults write -g com.apple.swipescrolldirection -bool false

## Menu bar
# バッテリー残量を％表記に
defaults write com.apple.menuextra.battery ShowPercent -string "YES"


