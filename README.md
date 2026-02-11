# A Witchy, Wine-y color scheme for Neovim.
***Best served in a cauldron with added spices.***

![witchesbrew screenshot with a couple splits](./assets/screenshot-0.png)

Built with [Lush](https://github.com/rktjmp/lush.nvim/tree/main).

Also includes a kitty theme in extras/kitty.

Plugins supported:
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [which-key](https://github.com/folke/which-key.nvim)
- LSP Semantic Tokens (Neovim 0.9+)

## Installation

With [Lazy](https://github.com/folke/lazy.nvim):
```lua
{
    "shoenot/witchesbrew.nvim",
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme witchesbrew]])
    end,
}
```

## Build or Modify

1. Ensure [lush.nvim](https://github.com/rktjmp/lush.nvim) and [shipwright.nvim](https://github.com/rktjmp/shipwright.nvim) are installed
2. Modify [lua/witchesbrew/theme.lua](lua/witchesbrew/theme.lua)
3. Rebuild the colorscheme using `./build.sh`
