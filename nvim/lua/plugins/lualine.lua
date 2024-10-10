require('lualine').setup {
  options = {
    icons_enabled = true,
    component_separators = '|',
    section_separators = '',
    theme = 'catppuccin',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 3,
        shorting_target = 40,
      }
    },
    lualine_b = {},
    lualine_c = {
      {
        'navic',
        color_correction = nil,
        navic_opts = nil,
      }
    }
  },
}
