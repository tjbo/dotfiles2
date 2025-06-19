---@diagnostic disable: undefined-global

hyper1Shortcuts = {
	{ "A", "Contacts", "Contacts" },
	{ "B", "Browser", "Safari", 3 },
	{ "C", "Chrome", "Google Chrome", 2 },
	-- { "D" , ""},
	{ "E", "Email", "Mail", 14 },
	-- { "F" , ""}, controlled by mission control but goes to last space if we want to use finder
	{ "G", "Google", "Google", 6 },
	-- { "H" , ""},
	-- { "I", "Inspector", "Brave Browser", 9 }, controlled by mission control atm
	-- { "J" , ""},
	{ "K", "Keys", "Karabiner-Elements", 15 },
	-- { "L", "Electron", 9 },controlled by mission control atm
	{ "M", "Music", "YT Music", 11 },
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
	{ "X", "Xcode", "Xcode", 15 },
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
