hyper1Shortcuts = {
	{ "A", "AI", "ChatGPT", 13 },
	{ "B", "Browser", "Safari", 3 },
	{ "C", "Chrome", "Google Chrome", 2 },
	-- { "D" , ""},
	{ "E", "Email", "Mail", 14 },
	-- { "F" , ""},
	{ "G", "Google", "Google", 6 },
	-- { "H" , ""},
	{ "I", "Inspector", "Brave Browser", 9 },
	-- { "J" , ""},
	{ "K", "Keys", "Karabiner-Elements", 15 },
	-- { "L", ""}
	{ "M", "Music", "Spotify", 11 },
	{ "N", "Notes", "Notes", 5 },
	-- { "O", "" },
	{ "P", "Pages", "Pages", 4 },
	-- { "Q", "" },
	{ "R", "Write", "WriteRoom" },
	{ "S", "Slack", "Slack", 7 },
	{ "T", "Terminal", "kitty", 1 },
	{ "U", "Upwork", "Upwork", 12 },
	{ "V", "VLC", "VLC", 15 },
	{ "W", "WhatsApp", "WhatsApp", 10 },
	-- { "X", "" },
	{ "Y", "YouTube", "YouTube", 8 },
	{ "Z", "Zight", "Zight" },
	{ "1", "Passwords", "Passwords" },
}

-- Mission Control Shortcuts
-- 0 goes to space 16 in mission control

for i, shortcut in ipairs(hyper1Shortcuts) do
	hs.hotkey.bind({ "ctrl", "cmd", "shift", "alt" }, shortcut[1], function()
		hs.application.launchOrFocus(shortcut[3])
	end)
end
