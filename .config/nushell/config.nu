let carapace_complter = {|spans|
    carapace $spans.0 nushell ...$spans | from json
}

$env.config = {
    completions: {
        external: {
        enable: true,
            completer: $carapace_complter, 
        }
    }
    show_banner: false,
}

$env.GPG_TTY = (tty)
gpg-connect-agent updatestartuptty /bye | ignore
