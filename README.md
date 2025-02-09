# Neovim Configuration

## Prerequisites

### System Requirements

- **Operating System**: Linux/WSL
- **Dependencies**: Ensure you have the following installed before proceeding:
  - `curl`
  - `wget`
  - `unzip`

### Fonts

Install the FiraCode Nerd Font for a better experience: [FiraCode Nerd Font Medium](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip)

Extract and install the font according to your operating system.

## Installation Guide

### General Setup

#### Telescope Dependencies

1. **Ripgrep**

```bash
sudo apt-get install ripgrep
```

2. **fzf (required for `telescope-fzf-native` extension)**

```bash
# Clone the fzf repository and install it
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf \
  && ~/.fzf/install
```

3. **Node (required for `markdown-preview`, LSPs, formatters, linters...)**

```bash
# Download and install nvm
curl -O https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh \
  && bash install.sh \
  && source ~/.profile \
  && nvm install 22 # Or choose a newer version
```

### Language Servers

#### Python: Pyright

1. Download and install:

```bash
# Install pyright
npm install -g pyright
```

#### Markdown: Marksman

1. Download and install:

```bash
# Download the Marksman binary, make it executable, and move it to the PATH
wget https://github.com/artempyanykh/marksman/releases/download/2024-12-18/marksman-linux-x64 \
  && mv marksman-linux-x64 marksman \
  && chmod +x marksman \
  && mv marksman $HOME/.local/bin/
```

#### Lua: lua_ls

1. Set up the Lua Language Server:

```bash
# Create the directory, download, and extract the Lua Language Server
mkdir -p ~/.local/share/lua-language-server \
  && cd ~/.local/share/lua-language-server \
  && wget https://github.com/LuaLS/lua-language-server/releases/download/3.13.5/lua-language-server-3.13.5-linux-x64.tar.gz \
  && tar -xvzf lua-language-server-3.13.5-linux-x64.tar.gz
```

2. Create an executable wrapper script:

```bash
# Create and set executable permissions for the Lua Language Server wrapper script
cat << 'EOF' > ~/.local/bin/lua-language-server
#!/bin/bash
~/.local/share/lua-language-server/bin/lua-language-server "$@"
EOF
chmod +x ~/.local/bin/lua-language-server
```

#### YAML: yamlls

```bash
# Install YAML language server globally using npm
npm install -g yaml-language-server
```

#### SonarLint ls

```bash
# Install jars from sonarlint vscode extension and move them to nvim shared files
wget https://github.com/SonarSource/sonarlint-vscode/releases/download/4.14.1%2B77101/sonarlint-vscode-linux-x64-4.14.1.vsix \
  && mv sonarlint-vscode-linux-x64-4.14.1.vsix sonarlint-vscode-linux-x64-4.14.1.zip \
  && unzip sonarlint-vscode-linux-x64-4.14.1.zip \
  && mkdir -p $HOME/.local/share/nvim/sonarlint/ \
  && mv extension/server/ $HOME/.local/share/nvim/sonarlint/ \
  && mv extension/analyzers/ $HOME/.local/share/nvim/sonarlint/
```

### Formatters and Linters

#### Python

Install tools for Python development:

```bash
# Install pip and Python-specific tools
sudo apt install python3-pip \
  && pip install black isort flake8 bandit
```

#### General Formatters

```bash
# Install formatters and linters globally using npm
npm install -g @johnnymorganz/stylua-bin prettier markdownlint markdownlint-cli jsonlint
```

### Clipboard Integration (WSL)

1. Install `win32yank` for clipboard integration:

```bash
wget https://github.com/equalsraf/win32yank/releases/latest/download/win32yank-x64.zip \
  && unzip win32yank-x64.zip \
  && chmod +x win32yank.exe \
  && mv win32yank.exe $HOME/.local/bin
```

## TODO

- [ ] Explore folds
- [ ] Enable persistence (save previous session)
- [ ] Explore best AI integration (`supermaven` vs `copilot`)
- [ ] Explore DAP

## Ideas

- Plugin for file rename LSP imports integration `oil`, `pyright`: [pymple](https://github.com/alexpasmantier/pymple.nvim)
- Markdown-based calendar (e.g., Obsidian-style integration)
- Markdown-based kanban board (e.g., Obsidian-style integration)
- Improved Git log visualization (e.g., a graphical `git log` viewer)
