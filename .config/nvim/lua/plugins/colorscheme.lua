return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,      -- load immediately
    priority = 1000,   -- load before all other plugins
    config = function()
      -- default to dark mode
      -- #vim.opt.background = "dark"
      vim.opt.background = "dark"
      vim.cmd.colorscheme("dracula-soft")

      -- toggle between dark/light
      local function toggle_background()
        if vim.opt.background:get() == "dark" then
          vim.opt.background = "light"
          vim.cmd.colorscheme("dracula-soft")
        else
          vim.opt.background = "dark"
          vim.cmd.colorscheme("dracula")
        end
        print("Background set to " .. vim.opt.background:get())
      end

      -- map <leader>bg to toggle background
      vim.keymap.set("n", "<leader>bg", toggle_background, { desc = "Toggle background" })
    end,
  },
}
