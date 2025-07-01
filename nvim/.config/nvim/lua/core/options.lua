-- options.lua
-- Sensible defaults for a minimal, productive Neovim

local opt = vim.opt
local g = vim.g

-------------------------------------------------
-- UI
-------------------------------------------------
opt.number = true                -- Show line numbers
opt.relativenumber = true        -- Relative line numbers
opt.cursorline = true            -- Highlight current line
opt.termguicolors = true         -- True color support
opt.signcolumn = 'yes'           -- Always show sign column
opt.scrolloff = 8                -- Keep 8 lines above/below cursor
opt.sidescrolloff = 8            -- Keep 8 columns on sides
opt.showmode = false             -- Don't show mode (like -- INSERT --)

-------------------------------------------------
-- Indentation and Tabs
-------------------------------------------------
opt.expandtab = true             -- Use spaces instead of tabs
opt.tabstop = 4                  -- Number of spaces for a tab
opt.shiftwidth = 4               -- Size of indent
opt.softtabstop = 4              -- Number of spaces on tab in insert
opt.smartindent = true           -- Smart autoindenting
opt.autoindent = true            -- Maintain indent from previous line

-------------------------------------------------
-- Searching
-------------------------------------------------
opt.ignorecase = true            -- Case-insensitive searching
opt.smartcase = true             -- But case-sensitive if capital letters used
opt.incsearch = true             -- Incremental search
opt.hlsearch = true              -- Highlight search results

-------------------------------------------------
-- File Handling
-------------------------------------------------
opt.undofile = true              -- Persistent undo
opt.swapfile = false             -- Disable swap file
opt.backup = false               -- Disable backup file
opt.writebackup = false          -- Disable backup before overwrite
opt.autoread = true              -- Auto reload files changed outside
opt.hidden = true                -- Allow switching buffers without saving

-------------------------------------------------
-- UI Behavior
-------------------------------------------------
opt.cmdheight = 1                -- Command line height
opt.laststatus = 3               -- Global statusline
opt.showcmd = true               -- Show command in bottom bar
opt.updatetime = 300             -- Faster completion
opt.timeoutlen = 500             -- Mappings wait time

-------------------------------------------------
-- Splits
-------------------------------------------------
opt.splitright = true            -- Vertical splits to the right
opt.splitbelow = true            -- Horizontal splits below

-------------------------------------------------
-- Completion
-------------------------------------------------
opt.completeopt = { "menu", "menuone", "noselect" } -- Better completion

-------------------------------------------------
-- Mouse and Clipboard
-------------------------------------------------
opt.mouse = "a"                  -- Enable mouse everywhere
opt.clipboard = "unnamedplus"    -- Use system clipboard

-------------------------------------------------
-- Misc
-------------------------------------------------
opt.shortmess:append("c")        -- No 'match x of y' messages
opt.iskeyword:append("-")        -- Treat dash as part of words
opt.wildmenu = true              -- Tab completion in command mode
opt.wildmode = { "list", "longest" }

-------------------------------------------------
-- Disable Some Built-in Plugins (Optional but Common)
-------------------------------------------------
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1         -- Disable netrw (if replacing with custom file explorer)

