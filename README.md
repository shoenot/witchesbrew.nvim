# A Witchy, Wine-y color scheme for NeoVim. 
***Best served in a cauldron with added spices.***

Requires [Lush](https://github.com/rktjmp/lush.nvim/tree/main).

Also includes a kitty theme in extras/kitty. 

Plugins supported:
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)

To install with [Lazy](https://github.com/folke/lazy.nvim):

```lua
{
    "shoenot/witchesbrew.nvim",
    dependencies = { 'rktjmp/lush.nvim' },
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme witchesbrew]])
    end,
}
```
