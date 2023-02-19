-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

  --gruvbox
  use 'morhetz/gruvbox'


	use 'theprimeagen/harpoon'
	use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
    use 'mbbill/undotree'
	use 'tpope/vim-fugitive'

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
    --use 'OmniSharp/omnisharp-vim'
    use {
            "OmniSharp/omnisharp-vim",
            config = function()
                    vim.g.OmniSharp_server_stdio_quickload = 1
                    vim.g.OmniSharp_server_use_net6 = 1
            end,
    }

	--install commentary and configure the multi line commenting
    use 'tpope/vim-commentary'
    use 'github/copilot.vim'
    --insta vim prettier
    use 'prettier/vim-prettier'


    use({
      "glepnir/lspsaga.nvim",
      branch = "main",
      config = function()
        require("lspsaga").setup({})
      end,
      requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
      }
    })



    --tab settings
    use 'nvim-tree/nvim-web-devicons'
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}


end)
