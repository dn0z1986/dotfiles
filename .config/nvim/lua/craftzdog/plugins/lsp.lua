-- dn0z: sin mason. Los servidores se instalan con Portage (o npm para los de web) y aquí
-- solo se activan los que estén en el PATH, para no llenar de avisos al abrir ficheros.
local capabilities = {
	workspace = {
		fileOperations = {
			didRename = true,
			willRename = true,
		},
	},
}
vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(capabilities),
})

local servers = {
	eslint = "vscode-eslint-language-server",
	oxlint = "oxlint",
	lua_ls = "lua-language-server",
	cssls = "vscode-css-language-server",
	vtsls = "vtsls",
	tailwindcss = "tailwindcss-language-server",
	glsl_analyzer = "glsl_analyzer",
	rust_analyzer = "rust-analyzer",
	clangd = "clangd",
	pyright = "pyright-langserver",
	bashls = "bash-language-server",
}

local enabled = {}
for name, cmd in pairs(servers) do
	if vim.fn.executable(cmd) == 1 then
		table.insert(enabled, name)
	end
end
vim.lsp.enable(enabled)
