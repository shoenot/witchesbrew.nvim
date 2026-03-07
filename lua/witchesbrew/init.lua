local M = {}

M.config = {
  transparent = false,
}

-- Groups whose backgrounds are cleared in transparent mode
local transparent_groups = {
  "Normal",
  "NormalNC",
  "SignColumn",
  "NeoTreeNormal",
  "NeoTreeNormalNC",
  "NvimTreeNormal",
  "StatusLineNC",
  "EndOfBuffer",
}

function M.setup(opts)
  M.config = vim.tbl_extend("force", M.config, opts or {})
end

function M._apply_transparency()
  if not M.config.transparent then return end
  for _, group in ipairs(transparent_groups) do
    local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
    if ok and hl then
      hl.bg = nil
      hl.ctermbg = nil
      vim.api.nvim_set_hl(0, group, hl)
    end
  end
end

function M.toggle_transparent()
  M.config.transparent = not M.config.transparent
  vim.cmd("colorscheme " .. vim.g.colors_name)
end

return M
