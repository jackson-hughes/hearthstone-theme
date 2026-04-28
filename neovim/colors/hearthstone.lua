if vim.fn.has("nvim-0.8") == 0 then
  vim.notify("hearthstone: Neovim 0.8+ required", vim.log.levels.ERROR)
  return
end

require("hearthstone").load()
