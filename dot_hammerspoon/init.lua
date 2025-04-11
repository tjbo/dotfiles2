ctrlCmdShortcuts = {
	{ "T", "kitty" },
	{ "C", "Google Chrome" },
	{ "B", "Safari" },
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
}

-- hs.hotkey.bind({ "ctrl", "cmd", "shift", "alt" }, "E", function()
-- 	hs.spaces.gotoSpace(16)
-- end)

for i, shortcut in ipairs(ctrlCmdShortcuts) do
	hs.hotkey.bind({ "ctrl", "cmd", "shift", "alt" }, shortcut[1], function()
		hs.application.launchOrFocus(shortcut[2])
	end)
end
