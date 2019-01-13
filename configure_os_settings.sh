#!/usr/bin/env bash

# This script changes some of the default macOS settings
# Reference: https://github.com/kevinSuttle/macOS-Defaults/blob/master/.macos

### UI ###
echo "Setting always show scrollbars" # Possible values: `WhenScrolling`, `Automatic` and `Always`
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
echo "Setting expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

### Keyboard ###
echo "Disable smart quotes"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
echo "Disable smart dashes"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
echo "Disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
echo "Disable automatic capitalization"
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

### Finder ###
echo "Setting Finder: show hidden files by default"
defaults write com.apple.finder AppleShowAllFiles -bool true
echo "Setting Finder: show path bar"
defaults write com.apple.finder ShowPathbar -bool true


printf "\n### MANUAL operations ###\n"
echo "To enable trackpad tap to click, do it via interface because the cli seems to be macOS version dependent"
echo "To increase the resolution of the retina screen, do it via the interface (displays -> scaled)"
echo "Ultimately, restart the computer so changes take effect everywhere (might not be needed, but just to make sure)"
