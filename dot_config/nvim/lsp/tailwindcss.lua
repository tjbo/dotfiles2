return {
	cmd = { "tailwindcss-language-server", "--stdio" },

	filetypes = {
		"astro",
		"css",
		"html",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	},

	root_markers = {
		"package.json",
		"tailwind.config.js",
		"tailwind.config.ts",
		"vite.config.js",
		"vite.config.ts",
		".git",
	},
}
