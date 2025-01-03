# ⚡️ Bolt (my dotfiles 📂)

Bolt is a command line tool I'm working on to manage my dotfiles. This allows
me to maintain a consistent environment between...

1. My personal and work laptops (MacOS).
2. A linux PC (Fedora)
3. Another linux PC (Linux Mint Debian)
4. WSL2 (Ubuntu)

## Planned Features 📝

- Compare existing files with the dotfiles in the repository and print a diff
  to stdout.
- Symlink dotfiles to the specified location or overwrite the existing files.
- Backup existing files before overwriting them (`.bak` extension).
- Restore backed up files.
- List all the dotfiles in the repository.
- List all the backed up files in the specified location (`$HOME/.dotfiles` by
  default).
- Show comparison to bash commands that can do the same thing (something like
  `bolt learn <command>`).

## Usage 💻

```bash
bolt --help
bolt <command> --help
```

## Setup 🛠

### Install Golang

I use [asdf](https://asdf-vm.com/) for version management. You can install the
required version of Golang (1.23.2) by running:

```bash
asdf plugin add golang
asdf install go 1.23.2
```

## Original

```bash
rsync -ra config/nvim/ ~/.config/nvim
rsync -ra config/zsh/mac/.zshrc ~/.zshrc # or whichever os you're on
```

## Oh-My-Posh

There are a few themes stored in the oh-my-posh directory. Instead of just copying
and updating a single file, there should be a selection of themes based on filename
to choose from.
