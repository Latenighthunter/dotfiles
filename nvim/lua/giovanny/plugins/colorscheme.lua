return {
  -- Using Lazy
  "navarasu/onedark.nvim",
  version = "v0.1.0", -- Pin to legacy version
  priority = 1000,
  config = function()
    require('onedark').setup {
      style = 'warmer',
      code_style = {
        comments = 'italic',
        keywords = 'italic',
        functions = 'italic',
        strings = 'none',
        variables = 'none'
    },
    }
    require('onedark').load()
  end
}
