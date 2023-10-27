return {
  	"gen740/SmoothCursor.nvim",
  	config = function()
    require("smoothcursor").setup { cursor = "" }

    vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#F7CB07" })

    vim.api.nvim_create_autocmd({ "ModeChanged" }, {
      	callback = function()
        	local current_mode = vim.fn.mode()
        	if current_mode == "n" then
          		-- vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#7aa2f7" })
          		vim.fn.sign_define("smoothcursor", { text = "" })
        	elseif current_mode == "v" then
          		-- vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#b699ed" })
          		vim.fn.sign_define("smoothcursor", { text = "󰹴" })
        	elseif current_mode == "V" then
          		-- vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#b699ed" })
          		vim.fn.sign_define("smoothcursor", { text = "󰹺" })
        	elseif current_mode == "\22" then
          		-- vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#b699ed" })
          		vim.fn.sign_define("smoothcursor", { text = "" })
        	elseif current_mode == "i" then
          		-- vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#9ece6a" })
          		vim.fn.sign_define("smoothcursor", { text = "󰗧" })
        	end
      	end,
	})
	end,
}
