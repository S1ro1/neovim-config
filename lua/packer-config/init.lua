return require'packer'.startup(function()
  use 'wbthomason/packer.nvim'

  -- colorschemes i rotate between
  use 'EdenEast/nightfox.nvim'
  use 'tomasiser/vim-code-dark'
  use 'Mofiqul/vscode.nvim'
  use 'luisiacc/gruvbox-baby'
  use 'kvrohit/rasmus.nvim'
  use 'mangeshrex/everblush.vim'
  -- end of colorschemes

  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'romgrk/barbar.nvim'
  use 'windwp/nvim-autopairs'
  use 'akinsho/toggleterm.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'github/copilot.vim'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'terrortylor/nvim-comment'
  use 'norcalli/nvim-colorizer.lua'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'folke/which-key.nvim'
  use {'abecodes/tabout.nvim',
    wants = { { 'nvim-treesitter'}, },
    after = { { 'nvim-cmp'} },
  }

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'nvim-lualine/lualine.nvim'
  use 'Pocco81/TrueZen.nvim'
end)

