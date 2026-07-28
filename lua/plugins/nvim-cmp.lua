if false then
  return {}
end

return {
  "hrsh7th/nvim-cmp",
  opts = function()
    experimental = {
      -- only show ghost text when we show ai completions
      ghost_text = true,
    }
  end,
}
