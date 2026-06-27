---@diagnostic disable: undefined-global

local hyper1Shortcuts = {
	{ "A", "ChatGPT", "ChatGPT", 9 },
	{ "B", "Brave", "Brave Browser", 2 },
	{ "C", "Chrome", "Google Chrome", 6 },
	{ "D", "Desktop", "Desktop" },
	{ "E", "Email", "Mail", 14 },
	{ "F", "Finder", "Finder" },
	-- { "F" , ""}, controlled by mission control but goes to last space if we want to use finder
	{ "G", "Google Gemini", "Google Gemini", 6 },
	-- { "H" , ""},
	{ "I", "Inkscape", "Inkscape", 12 },
	-- { "J", "GeForce NOW", "GeForce NOW", 12 },
	{ "M", "Music", "YT Music", 11 },
	{ "N", "Numbers", "Numbers", 5 },
	-- { "O", "" },
	{ "P", "Pages", "Pages", 4 },
	-- { "Q", "" },
	-- { "R", "Write", "WriteRoom" },
	{ "S", "Safari", "Safari", 3 },
	{ "T", "Terminal", "kitty", 1 },
	{ "V", "Preview", "Preview", 4 },
	{ "W", "WhatsApp", "WhatsApp", 10 },
	{ "X", "Grok", "Grok", 15 },
	{ "Y", "YouTube", "YouTube", 8 },
	{ "Z", "Zoom", "zoom.us" },
}

-- for overlay apps, used with extra shift key
local hyper2Shortcuts = {
	{ "C", "Contacts", "Contacts" },
	{ "D", "Disk Utility", "Disk Utility" },
	{ "F", "Finder", "Finder" },
	{ "G", "Google Translate", "Google Translate" },
	{ "K", "Keys", "Karabiner-Elements" },
	{ "I", "Insomnia", "Insomnia" },
	{ "N", "Notes", "Notes" },
	{ "P", "1Password", "1Password" },
	{ "S", "System Settings", "System Settings" },
	{ "T", "Transmission", "Transmission" },
	{ "U", "Upwork", "Upwork" },
	{ "V", "NordVPN", "NordVPN" },
	{ "Z", "Zight", "Zight" },
}

-- Mission Control Shortcuts
-- 0 goes to space 16 in mission control
for _, shortcut in ipairs(hyper1Shortcuts) do
	hs.hotkey.bind({ "ctrl", "cmd", "alt", "shift" }, shortcut[1], function()
		hs.application.launchOrFocus(shortcut[3])
	end)
end

for _, shortcut in ipairs(hyper2Shortcuts) do
	hs.hotkey.bind({ "cmd", "shift", "ctrl" }, shortcut[1], function()
		hs.application.launchOrFocus(shortcut[3])
	end)
end

-- Bind Cmd + Alt + D to Toggle Show Desktop
hs.hotkey.bind({ "ctrl", "cmd", "alt", "shift" }, "down", function()
	hs.spaces.toggleShowDesktop()
end)
