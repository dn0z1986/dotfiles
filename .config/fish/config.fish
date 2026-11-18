set -g fish_greeting
if status is-interactive
    fastfetch
    fish_add_path ~/.cargo/bin
    command -q fnm; and fnm env --use-on-cd --shell fish | source
    zoxide init fish --cmd cd | source
    alias ls "eza --icons --group-directories-first"
    alias ll "eza -l --icons --git --group-directories-first"
    alias la "eza -la --icons --git --group-directories-first"
    alias tree "eza --tree --icons"
    alias ncdu "gdu"
    alias cat "bat --style=plain --paging=never"
    abbr -a actualizar "sudo emerge --sync && sudo eix-update -q && sudo emerge -avuDN @world"
    abbr -a limpiar "sudo emerge --depclean -a && sudo eclean-dist -d"
    abbr -a buscar "eix"
    abbr -a dockeron "sudo rc-service docker start"
    abbr -a dockeroff "sudo rc-service docker stop"
end
