# fish-copyutils

A port of the [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh) plugins [copybuffer](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copybuffer), [copyfile](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copyfile), and [copypath](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copypath) for the Fish shell.

### Installation

Install with [fisher](https://github.com/jorgebucaran/fisher):

```shell
fisher install givensuman/fish-copyutils
```

### Usage

#### `copybuffer`

Copy text in command line to clipboard

```shell
echo "A command still being typed" # -> Copy with `ctrl+o`
```

`ctrl+o` keybinding can be rebound with `copybuffer_keybind` variable

#### `copyfile`

Copy file contents to clipboard

```shell
copyfile hello_world.txt # -> Hello, world!
```

#### `copypath`

Copy path to clipboard

```shell
# both of these have the same result
copypath /foo/bar # -> /foo/bar
cd /foo/bar
copypath # -> /foo/bar
```

### Requirements

As you might expect, currently heavily leverages the `fish_clipboard_copy` function built into the shell, which only supports the following system clipboards:

- `pbcopy`
- `wl-copy` using Wayland
- `xsel` and `xclip` for X11
- `clip.exe` on Windows

See the [docs](https://fishshell.com/docs/current/cmds/fish_clipboard_copy.html) for more details.

### License

[MIT](../LICENSE)
