return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  opts = {
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = '<C-y>',
        accept_word = '<M-w>',
        accept_line = '<M-e>',
        next = '<M-]>',
        prev = '<M-[>',
        dismiss = '<C-c>',
      },
    },
    filetypes = {
      yaml = true,
      markdown = true,
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
