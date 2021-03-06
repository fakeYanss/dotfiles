local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    print('Install packer.nvim first! See $DOTFILES/bin/nvim.sh')
end

-- plugin install
local packer = require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -------------------- Colorscheme ---------------------
    -- nord theme
    use 'shaunsingh/nord.nvim'


    ----------------------- Tabline ----------------------
    -- bufferline
    use {
        'akinsho/bufferline.nvim', 
        tag = "v2.*", 
        requires = 'kyazdani42/nvim-web-devicons'
    }

    --------------------- Statusline ---------------------
    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', 'shaunsingh/nord.nvim'}
    }

    -------------------- File explorer -------------------
    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    ------------------- Editing support ------------------
    -- nvim-autopairs
    use 'windwp/nvim-autopairs'
    -- Plugin to manipulate character pairs quickly
    use({
        "machakann/vim-sandwich",
        event = "VimEnter"
    })
    -- yank between remote server
    use 'ojroques/vim-oscyank'

    ---------------------- Syntax ------------------------
    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    ------------------- Fuzzy Finder ---------------------
    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }

    ------------------------- Git ------------------------
    use 'f-person/git-blame.nvim'

    --------------------- Note Taking --------------------
    -- Draw ASCII diagrams
    use 'jbyuki/venn.nvim'
    use 'vimwiki/vimwiki'

    ---------------------- Todo --------------------------
    -- use {'nvim-orgmode/orgmode', config = function()
    --     require('orgmode').setup{}
    -- end
    -- }
    -- use {'akinsho/org-bullets.nvim', config = function()
    --     require('org-bullets').setup()
    -- end
    -- }
    -- use {
    --     'lukas-reineke/headlines.nvim',
    --     config = function()
    --         require('headlines').setup()
    --     end,
    -- }

    ---------------------- Markdown ----------------------
    use 'dhruvasagar/vim-table-mode'
    use 'mzlogin/vim-markdown-toc'
    use {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && yarn install'
    }
    use 'rpzeng/markdown-title-number'
    use 'ekickx/clipboard-image.nvim'
    use 'hotoo/pangu.vim'

    -------------- Neovim Lua Development ----------------
    -- An implementation of the Popup API
    use 'nvim-lua/popup.nvim'
    -- All the Lua functions I don't want to write twice
    use 'nvim-lua/plenary.nvim'

    ---------------------- Comment -----------------------
    use 'numToStr/Comment.nvim'


    ------------------------ LSP -------------------------
    -- A tree like view for symbols
    use 'simrat39/symbols-outline.nvim'

    -- lsp
    use 'neovim/nvim-lspconfig'
    -- lsp Installer
    use 'williamboman/nvim-lsp-installer'
    -- Standalone UI for nvim-lsp progress
    use 'j-hui/fidget.nvim'
    -- adds vscode-like icons to Neovim lsp completions
    use 'onsails/lspkind-nvim'
    -- lsp java
    use 'mfussenegger/nvim-jdtls'
    -- lsp rust
    use {
        'simrat39/rust-tools.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }

    --------------------- Completion ---------------------
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp", -- neovim ?????? LSP ???????????? nvim-cmp ???
            --???????????????????????????????????????????????????
            "onsails/lspkind-nvim", -- ??????????????????????????????
            "hrsh7th/cmp-buffer", -- ???buffer???????????????
            "hrsh7th/cmp-nvim-lua", -- nvim-cmp source for neovim Lua API.
            "octaltree/cmp-look", -- ????????????????????????
            "hrsh7th/cmp-path", -- ??????????????????????????????
            "hrsh7th/cmp-calc", -- ????????????????????????1+1=???????????????
            "f3fora/cmp-spell", -- nvim-cmp ?????????????????? vim ???????????????
            "hrsh7th/cmp-emoji", -- ??????: ??????????????????
            'petertriho/cmp-git',
            'hrsh7th/cmp-cmdline',
            'lukas-reineke/cmp-rg',
            'David-Kunz/cmp-npm',
            'lukas-reineke/cmp-under-comparator'
        }
    }

    -- ???????????????
    use {
        "L3MON4D3/LuaSnip",
        requires = {
            "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
            "rafamadriz/friendly-snippets" --???????????????
        }
    }
    -- use 'tzachar/cmp-tabnine'

    --------------------- Debugging ----------------------
    -- Debug Adapter Protocol client
    use 'mfussenegger/nvim-dap'

end)

-- plugin config
require('plugins.autopair-conf')
require('plugins.bufferline-conf')
require('plugins.cmp-conf')
require('plugins.Commet-conf')
require('plugins.fidget-conf')
require('plugins.lualine-conf')
require('plugins.nord-conf')
require('plugins.telescope-conf')
require('plugins.tree-conf')
require('plugins.treesitter-conf')
require('plugins.venn-conf')
require('plugins.clipboard-image-conf')
-- require('plugins.orgmode-conf')

return packer
