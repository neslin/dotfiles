require("neslin.remap")
require("neslin.lazy")
--require("neslin.lualine-config")
require("neslin.settings")
require("neslin.bufferline-config")
--require("neslin.luaconf")

local autocmd = vim.api.nvim_create_autocmd

autocmd({ "bufread", "bufnewfile" }, {
    pattern = { '*/playbook.yaml', '*/inventory.yaml',

    },
    callback = function()
        vim.opt.filetype = "yaml.ansible"
    end,
})

vim.cmd([[

if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

]])
