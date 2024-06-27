let carapace_completer = {|spans|
    carapace $spans.0 nushell ...$spans | from json
}

$env.config = {
    completions: {
        external: {
        enable: true,
            completer: $carapace_completer, 
        }
    }
    show_banner: false,
}

$env.GPG_TTY = (tty)
gpg-connect-agent updatestartuptty /bye | ignore
