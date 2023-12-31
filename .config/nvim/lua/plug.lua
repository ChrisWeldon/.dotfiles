return require('packer').startup(function(use)
      -- [[ Plugins Go Here ]]
    -- TODO undotree
    use {
        'christoomey/vim-tmux-navigator',
        lazy = false
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use {                                              -- filesystem navigation
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        }
    }

    use { 'mhinz/vim-startify' }                       -- start screen
    use { 'ThePrimeagen/harpoon' }
    use { 'rainbowhxch/beacon.nvim'}               -- cursor jump
    -- use {'edluffy/specs.nvim'}
    use {
        'nvim-lualine/lualine.nvim',                     -- statusline
        requires = {'kyazdani42/nvim-web-devicons',
                    opt = true}
    }
    use {                                               -- Fuzzy Finder
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'majutsushi/tagbar' }                        -- code structure
    use { 'Yggdroot/indentLine' }                      -- see indentation
    use { 'tpope/vim-fugitive' }                       -- git integration
    use { 'junegunn/gv.vim' }                          -- commit history
    use { 'windwp/nvim-autopairs' }
    use { 'psliwka/vim-smoothie'}                      -- Smooth Scrolling
    use { 'smithbm2316/centerpad.nvim' }               -- Centering Buffer
    use({                                              -- Surrounding editing
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
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

    end,
    {
        package_root = vim.fn.stdpath('config') .. '/site/pack'
    }
)
