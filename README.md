# Flexoki Tmux

A tmux theme using the [Flexoki](https://stephango.com/flexoki) palette by Steph Ango — an inky color scheme for prose and code.

> 🛠️ **Forged from [tokyo-night-tmux](https://github.com/janoamaral/tokyo-night-tmux)** by [@janoamaral](https://github.com/janoamaral). Huge thanks to Jano and all the original contributors — this project would not exist without their work.

---

## Quick start

### 1. Install dependencies

**Nerd Fonts v3+** and **Bash 4.2+** are required.

<details>
<summary>macOS</summary>

```bash
brew install --cask font-monaspace-nerd-font font-noto-sans-symbols-2
brew install bash bc coreutils gawk gh glab gsed jq nowplaying-cli
```

</details>

<details>
<summary>Arch Linux</summary>

```bash
pacman -Sy bash bc coreutils git jq playerctl
```

</details>

<details>
<summary>Ubuntu / Debian</summary>

```bash
apt-get install bash bc coreutils gawk git jq playerctl
```

</details>

<details>
<summary>Alpine Linux</summary>

```bash
apk add bash bc coreutils gawk git jq playerctl sed
```

</details>

→ Full dependency list: [user_docs/installation.md](user_docs/installation.md)

### 2. Install the plugin

Add to `~/.tmux.conf` and press `prefix` + <kbd>I</kbd> to install:

```bash
set -g @plugin "codedmart/flexoki-tmux"
```

### 3. Pick a theme *(optional)*

```bash
set -g @flexoki-tmux_theme dark    # dark (default) | light
set -g @flexoki-tmux_transparent 1 # transparent background
```

### 4. Enable widgets *(optional)*

```bash
set -g @flexoki-tmux_show_git 1             # local git status
set -g @flexoki-tmux_show_wbg 1             # GitHub / GitLab stats
set -g @flexoki-tmux_show_netspeed 1        # network speed
set -g @flexoki-tmux_show_battery_widget 1  # battery level
set -g @flexoki-tmux_show_music 1           # now playing
set -g @flexoki-tmux_show_path 1            # current path
set -g @flexoki-tmux_show_hostname 1        # machine hostname
```

Reload your config: `tmux source ~/.tmux.conf`

---

## Features

| Feature | Description |
|---|---|
| 2 color themes | Dark (default) and Light — plus transparent background |
| Local git status | Branch, changes, push/pull sync indicator |
| GitHub / GitLab widget | Open PRs, pending reviews, assigned issues |
| Netspeed | Upload/download speed with interface detection |
| Now Playing | Track info via playerctl (Linux) or nowplaying-cli (macOS) |
| Battery | Level and charge state with contextual icons |
| Date & Time | Configurable format (YMD/MDY/DMY, 12H/24H) |
| Path widget | Current pane path (relative or absolute) |
| Hostname | Machine hostname in the status bar |
| Number styles | 8 styles for window/pane IDs (digital, roman, squares, …) |
| SSH indicator | Automatic icon change for SSH sessions |
| Prefix highlight | Visual indicator when tmux prefix is active |
| Zoom indicator | Separate style for zoomed panes |

---

## Documentation

| Topic | Link |
|---|---|
| Installation & dependencies | [user_docs/installation.md](user_docs/installation.md) |
| Color themes & transparency | [user_docs/themes.md](user_docs/themes.md) |
| Status bar widgets | [user_docs/widgets.md](user_docs/widgets.md) |
| Number styles & window icons | [user_docs/customization.md](user_docs/customization.md) |

---

## Contributing

> [!IMPORTANT]
> Please read the [contribution guide](CONTRIBUTING.md) before opening a PR.

Feel free to open an issue or pull request with suggestions or improvements.
Ensure your editor follows `.editorconfig`. [pre-commit] hooks are provided for
code consistency and will run against all PRs.

## Credits

- [Flexoki](https://stephango.com/flexoki) palette by Steph Ango
- Structure adapted from [tokyo-night-tmux](https://github.com/janoamaral/tokyo-night-tmux) by Jano Amaral

[pre-commit]: https://pre-commit.com/
[Nerd Fonts]: https://www.nerdfonts.com/
[bc]: https://www.gnu.org/software/bc/
[jq]: https://jqlang.github.io/jq/
[playerctl]: https://github.com/altdesktop/playerctl
[nowplaying-cli]: https://github.com/kirtan-shah/nowplaying-cli
[Homebrew]: https://brew.sh/
