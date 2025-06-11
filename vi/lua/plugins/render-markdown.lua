return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
	pipe_table = {
		enabled = true,
		render_modes = false,
		preset = 'none',
		style = 'full',
		cell = 'trimmed',
		padding = 1,
		min_width = 0,
		border = {
		    '┌', '┬', '┐',
		    '├', '┼', '┤',
		    '└', '┴', '┘',
		    '│', '─',
		},
		alignment_indicator = '━',
		head = 'RenderMarkdownTableHead',
		row = 'RenderMarkdownTableRow',
		filler = 'RenderMarkdownTableFill',
	},
    },
}
