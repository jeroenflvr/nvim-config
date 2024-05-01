function ColorMyPencils(color)
                color = color
                vim.cmd.colorscheme(color)
    local c = require('vscode.colors').get_colors()

                vim.api.nvim_set_hl(0, "Normal", { bg = c.vscBack })
                vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
