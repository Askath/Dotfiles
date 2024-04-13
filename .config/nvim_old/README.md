# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# Configure Godot external editor

1. In godot, go to Editor > Editor Settings > Text Editor > External
2. In Exac path, set your path to nvim.exe (probably in Program Files)
3. In exec flags, put --server 127.0.0.1:55432 --remote-send "<C-\><C-N>:n {file}<CR>:call cursor({line},{col})<CR>"
