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
