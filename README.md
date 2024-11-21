# Install and setup

Add this package with your favorite package manager. Add `require("nvim-add-lazy-plugin").setup()`.

# Usage

```lua
:AddLazyPlugin <plugin-name>
```

This will add a file ~/.config/nvim/lua/plugins/\<plugin-name>.lua with the following content:
```
return {
  "<plugin-name>",
  opts = {},
}
```

If the name of the plugin is of form "nvim-XYZ" then the filename will be XYZ.lua (not nvim-XYZ.lua).

After adding a plugin restart nvim.
