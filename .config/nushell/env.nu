use std *
path add ($env.HOME | path join .cargo bin)
path add ($env.HOME | path join .local bin)
path add ($env.HOME | path join .local share gem ruby 3.0.0 bin)

path add ($env.HOME | path join ".fnm")
load-env (fnm env --shell bash | lines | str replace 'export ' '' | str replace -a '"' '' | split column = | rename name value | where name != "FNM_ARCH" and name != "PATH" | reduce -f {} {|it, acc| $acc | upsert $it.name $it.value })
path add ($env.FNM_MULTISHELL_PATH | path join "bin")

# hide-env $env.SSH_AGENT_PID
$env.SSH_AUTH_SOCK = ($env.XDG_RUNTIME_DIR | path join "gnupg" "S.gpg-agent.ssh")

$env.LANG = "zh_TW.UTF-8"
