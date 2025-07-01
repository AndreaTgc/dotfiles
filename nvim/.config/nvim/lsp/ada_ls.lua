return {
	cmd = {
		"ada_language_server",
	},
	filetypes = {
		"ada",
		"adb",
		"ads",
	},
	root_markers = {
		".git",
		"*.gpr",
	},
	single_file_support = true,
	log_level = vim.lsp.protocol.MessageType.Warning,
}
