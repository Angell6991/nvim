--------------------Archivo de configuracion basico---------------------------------

require('settings')
require('keymaps')

------------------------------plugins-------------------------------------------------

require('packer')
require('vimtex')

---------------------------Templates-LaTex--------------------------------------------

function export_template(template_file)
    local template_path = vim.fn.expand(template_file)
    local template_content = vim.fn.join(vim.fn.readfile(template_path), "\n")

    local new_file_path = vim.fn.input("Ingrese el nombre del archivo de salida: ")
    local new_file = io.open(new_file_path, "w")
    new_file:write(template_content)
    new_file:close()

    vim.cmd('e ' .. new_file_path)
end

-------------------------------------------------------------------------------------


