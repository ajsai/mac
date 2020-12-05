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

# 起動音を消す
sudo nvram SystemAudioVolume=%80

## Finder関連
# 隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles true
# クイックルック内のテキストをコピーする
defaults write com.apple.finder QLEnableTextSelection -bool true
killall Dock
killall Finder

## マウス
defaults write -g com.apple.swipescrolldirection -bool false

