return {
	  {
        'neovim/nvim-lspconfig',
        dependencies = { 'saghen/blink.cmp' },
    },
       {
        'williamboman/mason-lspconfig.nvim',
        opts = {
            automatic_enable = {
                exclude = {
                    --needs external plugin
                }
            }
        }
    },
}

