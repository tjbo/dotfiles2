# How To Rebuild System For NVIM
This is a repo for my dotfiles. 

To install them on a brand new machine:

1. install git
2. install brew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
3. install chezmoi: `brew install chezmoi`
4. add custom chezmoi configs: `chezmoi init git@github.com:tjbo/dotfiles2.git`
5. `chezmoi apply`
6. add custom karabiner configs manually
7. make standalone safari apps for Music and YouTube (add to dock)
8. match apps to desktops 

# Two Hyper Keys
- hyper1 - (apps) controls switching apps, spaces and OS windows 
- hyper2 - (system) is used to control mac osx 
(hyper 1 is right thumb super key)

# 1 - Hyper Apps (Desktop / Spaces) 
Each app is mapped to a desktop. And a hyper key. The hyperkeys are configured
in hammerspoon. 

- hyper1 + uparrow = mission control
- hyper1 + downarrow = application windows 
- #1 - hyper1 + t = terminal
- #2 - hyper1 + c = chrome
- #3 - hyper1 + b (for browser) = safari 
- #4 - hyper1 + p = pages / preview
- #5 - hyper1 + n = notes
- #6 - hyper1 + g = google
- #7 - hyper1 + s = slack
- #8 - hyper1 + y = youtube
- #9 - hyper1 + i = (inspector) brave 
- #10 - hyper1 + w = whatsapp
- #11 - hyper1 + m = spotify
- #12 - hyper1 + u = upwork
- #13 - hyper1 + a = ai chat 
- #14 - hyper1  + e = email
- #15 - hyper1 + k = config (karabiner) 
- #16 - hyper1 + x = empty screen (desktop)
- #16 - hyper1 + v = vlc

ToDo
- hyper1 + i = inspector (for debugging)

# Workflows
JSON Viewing = use jless in CLI

## ToDos
- add vimium to workflow 
- add quick fix to work flow
- remember text objects 
- look at lazy loading things better
- improve hammerspoon

## Mini.ai
- dib, dab = brackets
- diq, daq, = quotes
- dif, daf = functions
- dia, daa = arguments

## Karabiner (manual setup)
- add simple modification "left option" -> "left control"
- add simple modification "caps lock" -> "escape"
- copy "./karabiner/hyper_1_apps.json" to complex modifications
- copy "./karabiner/hyper_2_kitty.json" to complex modifications
- copy "./karabiner/disable_cmd_tab.json to complex modifications

