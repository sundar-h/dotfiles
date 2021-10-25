--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
lvim.keys.normal_mode["<C-q>"] = ":q<cr>"
-- remove keymappings set by Lunarvim
lvim.keys.normal_mode["<Tab>"] = nil
lvim.keys.normal_mode["<S-Tab>"] = nil
lvim.keys.normal_mode["U"] = "<C-r>"
lvim.line_wrap_cursor_movement = true

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- lvim.builtin.telescope.on_config_done = function()
--   local actions = require "telescope.actions"
  -- for input mode
  -- lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
  -- lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
  -- lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
  -- lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
  -- -- for normal mode
  -- lvim.builtin.telescope.defaults.mappings.n["<C-j>"] = actions.move_selection_next
  -- lvim.builtin.telescope.defaults.mappings.n["<C-k>"] = actions.move_selection_previous
-- end


--   = {
--   ["<C-d>"] = cmp.mapping.scroll_docs(-4),
--   ["<C-f>"] = cmp.mapping.scroll_docs(4),
--   -- TODO: potentially fix emmet nonsense
--   ["<Tab>"] = cmp.mapping(function()
--     if cmp.visible() then
--       cmp.select_next_item()
--     elseif luasnip.expandable() then
--       luasnip.expand()
--     elseif inside_snippet() and seek_luasnip_cursor_node() and luasnip.jumpable() then
--       luasnip.jump(1)
--     elseif check_backspace() then
--       vim.fn.feedkeys(T "<Tab>", "n")
--     elseif is_emmet_active() then
--       return vim.fn["cmp#complete"]()
--     else
--       vim.fn.feedkeys(T "<Tab>", "n")
--     end
--   end, {
--       "i",
--       "s",
--     }),
--   ["<S-Tab>"] = cmp.mapping(function(fallback)
--     if cmp.visible() then
--       cmp.select_prev_item()
--     elseif inside_snippet() and luasnip.jumpable(-1) then
--       luasnip.jump(-1)
--     else
--       fallback()
--     end
--   end, {
--       "i",
--       "s",
--     }),

--   ["<C-Space>"] = cmp.mapping.complete(),
--   ["<C-e>"] = cmp.mapping.close(),
--   ["<CR>"] = cmp.mapping(function(fallback)
--     if cmp.visible() and cmp.confirm(lvim.builtin.cmp.confirm_opts) then
--       return
--     end

--     if inside_snippet() and seek_luasnip_cursor_node() and luasnip.jumpable() then
--       if not luasnip.jump(1) then
--         fallback()
--       end
--     else
--       fallback()
--     end
--   end),
-- }

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
}
lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle lsp_document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.lualine.active = true
lvim.builtin.dap.active = true
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.autopairs.active = true
lvim.builtin.bufferline.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.cmp.allow_prefix_unmatch = false
lvim.builtin.cmp.autocomplete = true
lvim.builtin.cmp.debug = false
lvim.builtin.telescope.active = true
lvim.builtin.telescope.defaults.layout_config.width = 0.95
lvim.builtin.telescope.defaults.layout_config.preview_cutoff = 75


-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
lvim.lsp.on_attach_callback = function(client, bufnr)
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end
  --Enable completion triggered by <c-x><c-o>
  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
end
-- you can overwrite the null_ls setup table (useful for setting the root_dir function)
lvim.lsp.null_ls.setup = {
  root_dir = require("lspconfig").util.root_pattern("Makefile", ".git", "node_modules"),
}
-- or if you need something more advanced
lvim.lsp.null_ls.setup.root_dir = function(fname)
  if vim.bo.filetype == "javascript" then
    return require("lspconfig/util").root_pattern("Makefile", ".git", "node_modules")(fname)
      or require("lspconfig/util").path.dirname(fname)
  elseif vim.bo.filetype == "php" then
    return require("lspconfig/util").root_pattern("Makefile", ".git", "composer.json")(fname) or vim.fn.getcwd()
  else
    return require("lspconfig/util").root_pattern("Makefile", ".git")(fname) or require("lspconfig/util").path.dirname(fname)
  end
end

-- set a formatter if you want to override the default lsp one (if it exists)

-- generic LSP settings
-- lvim.lang.javascript.formatters = { { exe = "prettier", args = { "--print-with", "100" } } }
-- lvim.format_on_save = true
-- lvim.lang.javascript.linters = { { exe = "eslint_d" } }
-- exe value can be "gofmt", "goimports", or "gofumpt"
lvim.lang.go.formatters = {{ exe = "goimports" }}
lvim.lang.rust.formatters = { { exe = "rustfmt" } }
lvim.lsp.override = { "rust" }

vim.opt.backup = false -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.colorcolumn = "99999" -- fixes indentline for now
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.foldmethod = "manual" -- folding set to "expr" for treesitter based folding
vim.opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 100 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.title = true -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
-- vim.opt.undodir = CACHE_PATH .. "/undo" -- set an undo directory
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = false -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column otherwise it would shift the text each time
-- vim.opt.wrap = false -- display lines as one long line
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.opt.scrolloff = 8 -- is one of my fav
vim.opt.sidescrolloff = 8

-- Additional Plugins
lvim.lsp.override = { "rust" }
lvim.plugins = {
  {"lunarvim/colorschemes"},
  {"folke/tokyonight.nvim"},
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "t9md/vim-choosewin",
    -- event = "BufRead",
    config = function()
      vim.cmd([[
      nmap  -  <Plug>(choosewin)
      let g:choosewin_overlay_enable = 1
      ]])
    end,
  },
  {"farmergreg/vim-lastplace",},
  {
    'abecodes/tabout.nvim',
    config = function()
      require('tabout').setup {
        tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
        backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
        act_as_tab = true, -- shift content if tab out is not possible
        act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
        enable_backwards = true, -- well ...
        completion = true, -- if the tabkey is used in a completion pum
        tabouts = {
          {open = "'", close = "'"},
          {open = '"', close = '"'},
          {open = '`', close = '`'},
          {open = '(', close = ')'},
          {open = '[', close = ']'},
          {open = '{', close = '}'}
        },
        ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
        exclude = {} -- tabout will ignore these filetypes
      }
    end,
    wants = {'nvim-treesitter'}, -- or require if not used so far
    after = {'nvim-cmp'} -- if a completion plugin is using tabs load it before
  },
  {
    "easymotion/vim-easymotion",
    event = "BufRead",
    config = function()
      vim.cmd([[
      map  / <Plug>(easymotion-sn)
      omap / <Plug>(easymotion-tn)
      map  n <Plug>(easymotion-next)
      map  N <Plug>(easymotion-prev)

      nmap s <Plug>(easymotion-s)
      omap t <Plug>(easymotion-bd-tl)
      let g:EasyMotion_use_upper = 1
      let g:EasyMotion_smartcase = 1
      let g:EasyMotion_use_smartsign_us = 1

      map <Leader>l <Plug>(easymotion-lineforward)
      map <Leader>j <Plug>(easymotion-j)
      map <Leader>k <Plug>(easymotion-k)
      map <Leader>h <Plug>(easymotion-linebackward)
      let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
      ]])
    end,
  },
  -- htop: neovim motions on speed! 类似easymotion的移动工具
  -- {
  --   "phaazon/hop.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("hop").setup()
  --     vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
  --     vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
  --     vim.api.nvim_set_keymap("n", "/", ":HopPattern<cr>", { silent = true })
  --   end,
  -- },
  -- lightspeed: jetpack codebase navigation
-- {
--   "ggandor/lightspeed.nvim",
--   event = "BufRead",
-- },
  -- nvim-bqf: better quickfix window
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end,
  },
  -- nvim-spectre: search and replace
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "kevinhwang91/rnvimr",
    cmd = "RnvimrToggle",
    config = function()
      vim.g.rnvimr_draw_border = 1
      vim.g.rnvimr_pick_enable = 1
      vim.g.rnvimr_bw_enable = 1
    end,
},  -- rnvimr: ranger file explorer window
  -- vim-matchup: navigate and highlight matching words
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
},
  -- nvim-ts-autotag: autoclose and autorename html tag
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
},
  -- nvim-ts-context-commentstring: commentstring option based on the cursor location
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    event = "BufRead",
},
  -- nvim-ts-rainbow: rainbow parentheses
  {
    "p00f/nvim-ts-rainbow",
},
  -- telescope-fzy-native.nvim: fzy style sorter that is compiled
  {
    "nvim-telescope/telescope-fzy-native.nvim",
    run = "make",
    event = "BufRead",
},
  -- telescope-project: switch between projects
  {
    "nvim-telescope/telescope-project.nvim",
    event = "BufWinEnter",
    setup = function()
      vim.cmd [[packadd telescope.nvim]]
    end,
},
  -- colorscheme --> lsp-colors: lsp diagnostics highlight groups for non lsp colorschemes
  {
    "folke/lsp-colors.nvim",
    event = "BufRead",
},
  -- lush.nvim: colorscheme creation aid
  {
    "rktjmp/lush.nvim",
},
  -- nvim-colorizer: color highlighter

  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
},
  -- LSP Enhancement --> compe-tabnine TabNine completion engine for hrsh7th/nvim-compe
  {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
},
  -- goto-preview: previewing goto definition calls
  {
    "rmagatti/goto-preview",
    config = function()
      require('goto-preview').setup {
        width = 120; -- Width of the floating window
        height = 25; -- Height of the floating window
        default_mappings = false; -- Bind default mappings
        debug = false; -- Print debug information
        opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
        post_open_hook = nil -- A function taking two arguments, a buffer and a window to be ran as a hook.
        -- You can use "default_mappings = true" setup option
        -- Or explicitly set keybindings
        -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
        -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
        -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
      }
    end,
},
-- cwd to the project's root directory
{
  "ahmedkhalf/lsp-rooter.nvim",
  event = "BufRead",
  config = function()
    require("lsp-rooter").setup()
  end,
},
  -- lsp_signature.nvim: hint when you type
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require "lsp_signature".setup()
    end
},
  -- symbols-outline.nvim: a tree like view for symbols
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
},
  -- codi.vim: interactive scratchpad for hackers
  {
    "metakirby5/codi.vim",
    cmd = "Codi",
},
  -- dial.nvim: extended incrementing/decrementing
  {
    "monaqa/dial.nvim",
    event = "BufRead",
    config = function()
      local dial = require "dial"
      vim.cmd [[
      nmap <C-a> <Plug>(dial-increment)
      nmap <C-x> <Plug>(dial-decrement)
      vmap <C-a> <Plug>(dial-increment)
      vmap <C-x> <Plug>(dial-decrement)
      vmap g<C-a> <Plug>(dial-increment-additional)
      vmap g<C-x> <Plug>(dial-decrement-additional)
      ]]

      dial.augends["custom#boolean"] = dial.common.enum_cyclic {
        name = "boolean",
        strlist = { "true", "false" },
      }
      table.insert(dial.config.searchlist.normal, "custom#boolean")

      -- For Languages which prefer True/False, e.g. python.
      dial.augends["custom#Boolean"] = dial.common.enum_cyclic {
        name = "Boolean",
        strlist = { "True", "False" },
      }
      table.insert(dial.config.searchlist.normal, "custom#Boolean")
    end,
},
  -- neoscroll: smooth scrolling
{
  "karb94/neoscroll.nvim",
  event = "WinScrolled",
  config = function()
  require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
        '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,        -- Default easing function
        pre_hook = nil,              -- Function to run before the scrolling animation starts
        post_hook = nil,              -- Function to run after the scrolling animation ends
        })
  end
},
  -- neuron: next generation note-taking
	{"oberblastmeister/neuron.nvim"},
-- nvim-lastplace: pick up where you left off
{
		"ethanholz/nvim-lastplace",
		event = "BufRead",
		config = function()
			require("nvim-lastplace").setup({
				lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
				lastplace_ignore_filetype = {
					"gitcommit", "gitrebase", "svn", "hgcommit",
				},
				lastplace_open_folds = true,
			})
		end,
	},
  -- todo-comments.nvim: highlight and search for todo comments
{
  "folke/todo-comments.nvim",
  event = "BufRead",
},
-- vim-cursorword: underlines the word under the cursor
{
  "itchyny/vim-cursorword",
    event = {"BufEnter", "BufNewFile"},
    config = function()
      vim.api.nvim_command("augroup user_plugin_cursorword")
      vim.api.nvim_command("autocmd!")
      vim.api.nvim_command("autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0")
      vim.api.nvim_command("autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif")
      vim.api.nvim_command("autocmd InsertEnter * let b:cursorword = 0")
      vim.api.nvim_command("autocmd InsertLeave * let b:cursorword = 1")
      vim.api.nvim_command("augroup END")
      end
},
-- vim-repeat: enable repeating supported plugin maps with "."
{ "tpope/vim-repeat" },
-- vim-sanegx: open url with gx
{
  "felipec/vim-sanegx",
  event = "BufRead",
},

-- vim-surround: mappings to delete, change and add surroundings
{
  "tpope/vim-surround",
  keys = {"c", "d", "y"}
},
-- Language specific
-- bracey: live edit html, css, and javascript
{
  "turbio/bracey.vim",
  cmd = {"Bracey", "BracyStop", "BraceyReload", "BraceyEval"},
  run = "npm install --prefix server",
},
  -- RUST:
  {
    "simrat39/rust-tools.nvim",
    config = function()
      local opts = {
        server = {
          cmd = { vim.fn.stdpath "data" .. "/lspinstall/rust/rust-analyzer" },
          -- on_attach is a callback called when the language server attachs to the buffer
          -- on_attach = require("lspconfig").common_on_attach,
          -- on_init = require("lspconfig").common_on_init,
        },
        }
      require("rust-tools").setup(opts)
    end,
    ft = { "rust", "rs" },
  },

}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
