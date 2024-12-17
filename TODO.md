# TODO

- [ ] 2024-11-09 Do something with the [cheatsheet](#cheatsheet-for-neovim) below.
- [ ] 2024-12-05 View existing dotfiles for NeoVim
- [ ] 2024-12-05 Hash Calculation for new & existing dotfiles
- [ ] 2024-12-05 Wezterm configuration
- [ ] 2024-12-05 Zellij
- [ ] 2024-12-05 Dry Run

## Cheatsheet for NeoVim

### Basics

| Command            | Description                                              |
|--------------------|----------------------------------------------------------|
| `:q`               | Quit Neovim                                              |
| `:q!`              | Quit without saving changes                              |
| `:w`               | Save the current file                                    |
| `:wq` or `:x`      | Save the file and quit                                   |
| `:e <filename>`    | Open a specific file                                     |
| `:vsp <filename>`  | Open a file in a vertical split                          |
| `:sp <filename>`   | Open a file in a horizontal split                        |
| `:ls`              | List open buffers                                        |
| `:b <buffer>`      | Switch to a buffer                                       |
| `:noh`             | Remove search highlighting                               |
| `u`                | Undo last change                                         |
| `Ctrl + r`         | Redo last undone change                                  |
| `yy`               | Yank (copy) the current line                             |
| `dd`               | Delete the current line                                  |
| `p`                | Paste below the cursor                                   |
| `P`                | Paste above the cursor                                   |
| `/ <text>`         | Search for text in the file                              |
| `n`                | Go to the next search result                             |
| `N`                | Go to the previous search result                         |
| `gg`               | Go to the beginning of the file                          |
| `G`                | Go to the end of the file                                |
| `0`                | Go to the beginning of the line                          |
| `$`                | Go to the end of the line                                |
| `a`                | Append text after the cursor                             |
| `A`                | Append text at the end of the line                       |
| `:%s/old/new/g`    | Replace all occurrences of 'old' with 'new' in the file  |
| `:set number`      | Show line numbers                                        |
| `:set nonumber`    | Hide line numbers                                        |
| `Ctrl + w` + `v`   | Split the window vertically                              |
| `Ctrl + w` + `s`   | Split the window horizontally                            |
| `Ctrl + w` + `h`   | Move to the split on the left                            |
| `Ctrl + w` + `j`   | Move to the split below                                  |
| `Ctrl + w` + `k`   | Move to the split above                                  |
| `Ctrl + w` + `l`   | Move to the split on the right                           |

### Modes

| Command            | Description                                              |
|--------------------|----------------------------------------------------------|
| `esc`              | Normal mode                                              |
| `i`                | Insert mode                                              |
| `v`                | Visual mode                                              |
| `V`                | Visual line mode                                         |
| `Ctrl + v`         | Visual block mode                                        |
| `:`                | Command mode                                             |
