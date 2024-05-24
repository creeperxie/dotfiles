use std *
# path add ($env.HOME | path join ".ghcup" "bin")
path add ($env.HOME | path join ".local" "bin")
path add ($env.HOME | path join ".local" "share" "gem" "ruby" "3.0.0" "bin")

# hide-env $env.SSH_AGENT_PID
$env.SSH_AUTH_SOCK = ($env.XDG_RUNTIME_DIR | path join "gnupg" "S.gpg-agent.ssh")
