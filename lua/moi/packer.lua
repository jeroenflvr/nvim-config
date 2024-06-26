-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
                  'nvim-telescope/telescope.nvim', tag = '0.1.5',
                  -- or                            , branch = '0.1.x',
                  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('Mofiqul/vscode.nvim')

  use ('renerocksai/telekasten.nvim')

  use('nvim-treesitter/playground')

  use('nvim-lua/plenary.nvim')
  use('ThePrimeagen/harpoon')

  use ('mbbill/undotree')
  use('tpope/vim-fugitive')

  use('fatih/vim-go')
  use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }
  use('ziglang/zig.vim');
  use {
                  'VonHeikemen/lsp-zero.nvim',
                  branch = 'v3.x',
                  requires = {
                                  --- Uncomment the two plugins below if you want to manage the language servers from neovim
                                  --- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
                                  {'williamboman/mason.nvim'},
                                  {'williamboman/mason-lspconfig'},
                                  {'williamboman/nvim-lsp-installer'},
                                  -- LSP Support
                                  {'neovim/nvim-lspconfig'},
                                  -- Autocompletion
                                  {'hrsh7th/nvim-cmp'},
                                  {'hrsh7th/cmp-nvim-lsp'},
                                  {'L3MON4D3/LuaSnip'},
                  }
  }
end)
