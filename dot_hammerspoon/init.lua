hyper1Shortcuts = {
	{ "T", "kitty" },
	{ "C", "Google Chrome" },
	{ "B", "Safari" },
	{ "E", "Mail" },
	{ "R", "WriteRoom" },
	{ "P", "Pages" },
	{ "N", "Notes" },
	{ "G", "Google" },
	{ "S", "Slack" },
	{ "Y", "YouTube" },
	{ "I", "Brave Browser" },
	{ "W", "Whatsapp" },
	{ "M", "Spotify" },
	{ "U", "Upwork" },
	{ "A", "ChatGPT" },
	{ "K", "Karabiner-Elements" },
	{ "V", "VLC" },
	{ "Z", "Zight" },
	{ "1", "Passwords" },

	-- Remaining
	-- D F G H J K L O Q W
}

-- E is done in mission control at the moment stands for everything

for i, shortcut in ipairs(hyper1Shortcuts) do
	hs.hotkey.bind({ "ctrl", "cmd", "shift", "alt" }, shortcut[1], function()
		hs.application.launchOrFocus(shortcut[2])
	end)
end
