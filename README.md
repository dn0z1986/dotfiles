# dotfiles

Mis archivos de configuración en Gentoo Linux.

## fastfetch

Configuración minimalista con el logo `gentoo_small`, colores en magenta e iconos.

**Requisitos:** una [Nerd Font](https://www.nerdfonts.com/) en tu terminal para que se vean los iconos.

### Instalación

```sh
mkdir -p ~/.config/fastfetch
curl -o ~/.config/fastfetch/config.jsonc \
  https://raw.githubusercontent.com/dn0z1986/dotfiles/main/.config/fastfetch/config.jsonc
```

> El módulo `wm` muestra "+ Serpantinum" fijo en el formato; cámbialo o quítalo en `config.jsonc` si no lo usas.

## Escritorio completo (niri + Serpantinum)

Gentoo con [niri](https://github.com/YaLTeR/niri) y Serpantinum (barra, lanzador, fondos y colores con matugen).

| Qué | Dónde |
|---|---|
| niri (partido con `include`) | `.config/niri/` |
| Serpantinum + plantillas de matugen | `.config/serpantinum/` |
| Terminal: kitty | `.config/kitty/` |
| Shell: fish (plugins con fisher: tide, fzf.fish, autopair, done) | `.config/fish/` |
| Neovim (basado en la config de craftzdog, sin mason ni copilot) | `.config/nvim/` |
| GTK / Qt (adw-gtk3-dark, qt6ct) | `.config/gtk-*/`, `.config/qt6ct/` |
| Dolphin, btop, cava, yazi, bat, zathura, lazygit, fzf | `.config/…` |
| Scripts | `.local/bin/` |

Scripts:
- `niri-apilar-vertical`: en el monitor vertical, las ventanas nuevas se apilan debajo en vez de abrirse al lado.
- `sddm-matugen`: pasa el fondo y los colores de matugen a SDDM.
- `noche-inactivo`: de 2:00 a 8:00 apaga la pantalla y suspende antes (lo llama Serpantinum).

Antes de usarlo, cambia:
- los nombres de las pantallas en `.config/niri/config/output.kdl` (`DP-3`, `HDMI-A-1`); los ves con `niri msg outputs`;
- el tema de cursor en `.config/niri/config/cursor.kdl`;
- tu ubicación para el tiempo en `.config/serpantinum/settings.json` (viene vacía).
