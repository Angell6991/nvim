require('lualine').setup {
    options = {
        icons_enabled = true,
        -- theme = "codedark", 
        -- theme = "wombat", 
        -- theme = "papercolor_dark", 
        theme = "horizon", 
        -- theme = "moonfly", 
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {},
        -- lualine_c = {'filename',},
        -- lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_x = {
            {
                'buffers', 
                icons_enabled = true, 
                max_length = vim.o.columns / 2, -- Ajusta el tamaño según sea necesario
                symbols = { 
                    alternate_file = '󰅏 ', 
                    modified = ' 󰆓 ', 
                    pinned = '  ', 
                },
                -- filetype_names = { 
                --     ['lua'] = 'Lua', 
                --     ['python'] = 'Py',
                --     ['sh'] = 'Sh',
                --     ['dat'] = 'dat',
                --     ['c'] = 'C',
                --     ['cpp'] = 'C++',
                --     ['tex'] = 'Tex',
                -- }
            },
            'fileformat', 
            'filetype',
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}

