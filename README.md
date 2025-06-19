This is a repo for my dotfiles. 

To install them on a brand new machine:
`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply tjbo`

## Two Hyper Keys
- hyper1 - (apps) controls switching apps, spaces and OS windows 
- hyper2 - (kitty) is solely for use in the terminal
(hyper 1 is right thumb super key)

### 1 - Hyper Apps (Desktop / Spaces) 
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

### Workflows
JSON Viewing = use jless in CLI

## ToDos
- add vimium to workflow 
- add quick fix to work flow
- remember text objects 
- look at lazy loading things better
- switch fast mail to icloud
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

