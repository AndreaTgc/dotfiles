return {
	cmd = {
		"clangd",
	},
	filetypes = {
		"c",
		"cpp",
	},
	root_markers = {
		".git",
		".clang-format",
	},
	single_file_support = true,
	log_level = vim.lsp.protocol.MessageType.Warning,
}
