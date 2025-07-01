return {
	cmd = {
		"ocamllsp",
	},
	filetypes = {
		"ocaml",
	},
	root_markers = {
		".git",
		".ocamlformat",
	},
	single_file_support = true,
	log_level = vim.lsp.protocol.MessageType.Warning,
}
