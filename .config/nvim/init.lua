-- [[init.lua]]

-- LEADER
-- Remap of leader keys
vim.g.mapleader = "'"
vim.g.localleader = "\\"

require("vars") -- VARIABLES: Defined in lua/vars.lua
require("opts") -- OPTIONS: Defined in lua/opt.lua
require("keys") -- KEYBINDINGS: Defined in lua/keys.lua
require("plug") -- PLUGINS: Defined in lua/plug.lua

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
    'tsserver',
    'eslint',
    'lua_ls'
})
lsp.setup()
-- lua_ls used to be sumneko_lua

-- TODO local cmp = require('cmp') -- for completion

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {"lua", "json", "json5", "markdown", "javascript", "typescript"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = {},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

vim.cmd.colorscheme('rose-pine')

require("lualine").setup({
    options = {
        theme = "rose-pine", 
    }
})

require('nvim-tree').setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

require('beacon').setup({
	enable = true,
	size = 40,
	fade = true,
	minimal_jump = 10,
	show_jumps = true,
	focus_gained = false,
	shrink = true,
	timeout = 300,
	ignore_buffers = {},
	ignore_filetypes = {},
})

require('rose-pine').setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'auto',
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = 'moon',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = false,
	disable_italics = false,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		background_nc = '_experimental_nc',
		panel = 'surface',
		panel_nc = 'base',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	-- https://github.com/rose-pine/neovim/wiki/Recipes
	highlight_groups = {
		ColorColumn = { bg = 'rose' },

		-- Blend colours against the "base" background
		CursorLine = { bg = 'foam', blend = 10 },
		StatusLine = { fg = 'love', bg = 'love', blend = 10 },

		-- By default each group adds to the existing config.
		-- If you only want to set what is written in this config exactly,
		-- you can set the inherit option:
		Search = { bg = 'gold', inherit = false },
	}
})

require('telescope').load_extension('harpoon')

-- Set colorscheme after options
vim.cmd('colorscheme rose-pine')

vim.cmd("highlight Beacon guibg=black ctermbg=15")
require("nvim-autopairs").setup{}
require("nvim-surround").setup({})

