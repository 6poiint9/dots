-- load defaults i.e lua_lsp
--local config = require("plugins.configs.lspconfig") 
--local on_attach = config.on_attach
--local capabilities = config.capabilities


require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "clangd", "ts_ls" } 
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

--lspconfig.tsserver.setup {
  --on_attach = on_attach,
  --capabilities = capabilities,
  --init_options = {
    --preferences = {
      --disableSuggestions = true,
    --}
  --}
--}

--lspconfig.rust_analyzer.setup {
  --on_attach = nvlsp.on_attach,
  --on_init = nvlsp.on_init,
  --capabilities = nvlsp.capabilities,
  --settings = {
    --["rust-analyzer"] = {
      --cargo = {
        --loadOutDirsFromCheck = true,
      --},
      --procMacro = {
        --enable = true,
      --},
      -- Add additional rust-analyzer specific settings here
    --},
  --},
--}
-- 
-- configuring single server, example: typescript
-- lspconfig.tsserver.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
