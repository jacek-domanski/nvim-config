local function set_flash_highlights()
	vim.api.nvim_set_hl(0, "FlashLabel", {
		fg = "#1a1b26", -- background
		bg = "#ff007c", -- magenta accent
		bold = false,
	})

	vim.api.nvim_set_hl(0, "FlashMatch", {
		fg = "#c0caf5",
		bg = "#33467C",
	})

	vim.api.nvim_set_hl(0, "FlashCurrent", {
		fg = "#1a1b26",
		bg = "#7aa2f7", -- blue accent
		bold = true,
	})

	vim.api.nvim_set_hl(0, "FlashBackdrop", {
		fg = "#565f89",
	})

	vim.api.nvim_set_hl(0, "FlashPrompt", {
		fg = "#7dcfff", -- cyan
	})
end

-- Apply immediately (fixes your issue)
set_flash_highlights()

-- Reapply on colorscheme change
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = set_flash_highlights,
})
