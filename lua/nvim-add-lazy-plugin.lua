local function setup()
  vim.api.nvim_create_user_command("AddLazyPlugin", function(args)
    local full_name = args.fargs[1]

    local _, _, _, file_name = string.find(full_name, "(.*)/(.*)")
    file_name = file_name:gsub(".nvim", "")

    vim.cmd("edit ~/.config/nvim/lua/plugins/" .. file_name .. ".lua")

    local lines = {
      "return {",
      '  "' .. full_name .. '",',
      "  opts = {},",
      "}",
    }

    local id = vim.api.nvim_get_current_buf()

    vim.api.nvim_buf_set_lines(id, 0, 0, false, lines)
    vim.cmd("write")
    vim.api.nvim_win_set_cursor(0, { 3, 10 })
  end, { nargs = 1 })
end

return {
  setup = setup,
}
