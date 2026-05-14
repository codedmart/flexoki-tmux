# Themes

[← Back to README](../README.md) · [Installation →](installation.md) · [Widgets →](widgets.md) · [Customization →](customization.md)

---

## Available themes

Flexoki Tmux ships with two variants based on the [Flexoki](https://stephango.com/flexoki) palette by Steph Ango.

| Name | Background | Description |
|---|---|---|
| `dark` | `#100F0F` | Default. Inky black background. |
| `light` | `#FFFCF0` | Warm paper background. |

---

## Configuring the theme

Add to your `~/.tmux.conf`:

```bash
set -g @flexoki-tmux_theme dark   # dark (default) | light
```

Restart tmux or reload your config for changes to take effect:

```bash
tmux source ~/.tmux.conf
```

---

## Transparent background

Remove the solid background color so the theme inherits your terminal's background:

```bash
set -g @flexoki-tmux_transparent 1   # 1 = transparent | 0 = solid (default)
```

This sets the tmux background color to `default`, so your terminal background shows through.

---

## Next steps

- [Enable widgets](widgets.md)
- [Customize number and window styles](customization.md)
