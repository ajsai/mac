#!/bin/sh

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

