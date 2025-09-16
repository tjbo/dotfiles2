---@diagnostic disable: undefined-global

hyper1Shortcuts = {
	{ "A", "Brave", "Brave Browser", 13 },
	{ "B", "Browser", "Safari", 3 },
	{ "C", "Chrome", "Google Chrome", 2 },
	{ "D", "Dev", "Google Chrome Dev", 9 },
	{ "E", "Email", "Mail", 14 },
	-- { "F" , ""}, controlled by mission control but goes to last space if we want to use finder
	{ "G", "Google", "Google", 6 },
	-- { "H" , ""},
	-- { "J" , ""},
	{ "K", "Keys", "Karabiner-Elements", 15 },
	{ "M", "Music", "YT Music", 11 },
	{ "N", "Numbers", "Numbers", 5 },
	-- { "O", "" },
	{ "P", "Pages", "Pages", 4 },
	-- { "Q", "" },
	{ "R", "Write", "WriteRoom" },
	{ "S", "Slack", "Slack", 7 },
	{ "T", "Terminal", "kitty", 1 },
	{ "V", "Preview", "Preview", 4 },
	{ "W", "WhatsApp", "WhatsApp", 10 },
	{ "X", "Xcode", "Xcode", 15 },
	{ "Y", "YouTube", "YouTube", 8 },
	{ "Z", "Zight", "Zight" },
}

-- for overlay apps
hyper2Shortcuts = {
	{ "C", "Contacts", "Contacts" },
	{ "P", "1Password", "1Password" },
	{ "N", "Notes", "Notes" },
	{ "I", "Insomnia", "Insomnia" },
	{ "S", "System Settings", "System Settings" },
	{ "U", "Upwork", "Upwork" },
}

-- hyper3Shortcuts = {}

-- Mission Control Shortcuts
-- 0 goes to space 16 in mission control

for _, shortcut in ipairs(hyper1Shortcuts) do
	hs.hotkey.bind({ "ctrl", "cmd", "alt" }, shortcut[1], function()
		hs.application.launchOrFocus(shortcut[3])
	end)
end

for _, shortcut in ipairs(hyper2Shortcuts) do
	hs.hotkey.bind({ "ctrl", "cmd", "alt", "shift" }, shortcut[1], function()
		hs.application.launchOrFocus(shortcut[3])
	end)
end


-- for _, shortcut in ipairs(hyper3Shortcuts) do
-- 	hs.hotkey.bind({ "cmd", "ctrl", "shift" }, shortcut[1], function()
-- 		hs.application.launchOrFocus(shortcut[3])
-- 	end)
-- end
