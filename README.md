![Neovim](https://img.shields.io/badge/editor-Neovim-green?logo=neovim&style=plastic)

# CodeSmell Dark     💩
_a Neovim Color Scheme_

## Featuring
- Optimization for `Treesitter`
  - Additional highlighting for `Rust`, `Lua` and `Vim` files
- Highlighting of currently popular plugins such as the wonderful [Telescope](https://github.com/nvim-telescope/telescope.nvim) 🔭 and [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Highlighting of all your tried and true favorite plugins.
- Compatibility with Vim. _But_, you get more granularity and speed with Neovim.
- Full customizability via `Treesitter` and non-Treesitter **HL** groups


![image](https://user-images.githubusercontent.com/8049061/145034767-bfdc6534-98ea-4a0b-8c9e-65e62bf38ce4.png)

### Installation and Setup

```lua
-- packer(but, use your favorite plugin manager)
use "whatsthatsmell/codesmell_dark.vim"
-- configs (just yank what's in quotes and drop in your .vimrc if you're not Lua'd yet)
vim.cmd "set fillchars+=vert:│"
vim.cmd "colorscheme codesmell_dark"
```

### @TODOUA:
- [ ] Rewrite in Lua (currently a WIP)
  - Will keep vimL version up as well

_Thanks to:_ https://github.com/yunlingz/ci_dark
