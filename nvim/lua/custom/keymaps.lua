-- [[ Harpoon ]]
local harpoon = require 'harpoon'
harpoon:setup()

vim.keymap.set('n', '<leader>hh', function()
  harpoon:list():append()
end, { desc = '[H]aprpoon [H]add' })
vim.keymap.set('n', '<TAB>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = '[TAB] Toggle quick menu' })

vim.keymap.set('n', '<leader>h1', function()
  harpoon:list():select(1)
end, { desc = '[H]arpoon [1]buffer' })
vim.keymap.set('n', '<leader>h2', function()
  harpoon:list():select(2)
end, { desc = '[H]arpoon [2]buffer' })
vim.keymap.set('n', '<leader>h3', function()
  harpoon:list():select(3)
end, { desc = '[H]arpoon [3]buffer' })
vim.keymap.set('n', '<leader>h4', function()
  harpoon:list():select(4)
end, { desc = '[H]arpoon [4]buffer' })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set('n', '<leader>hp', function()
  harpoon:list():prev()
end, { desc = '[H]arpoon [P]revious' })
vim.keymap.set('n', '<leader>hn', function()
  harpoon:list():next()
end, { desc = '[H]arpoon [N]ext' })

-- [[ Misc ]]
