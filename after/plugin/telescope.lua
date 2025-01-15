local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>pf', builtin.git_files, { desc = 'Telescope find in git' })
vim.keymap.set('n', '<leader>ps', function()
    local search_string = vim.fn.input("Grep > ")       -- Prompt user for search query
    if search_string ~= "" then
        builtin.grep_string({ search = search_string }) -- Call telescope grep with the input string
    else
        print("No search query provided")
    end
end, { desc = 'Telescope search string' })
