$env.config.show_banner = false
$env.config.shell_integration.osc9_9 = true
$env.config.shell_integration.osc7 = false
$env.config.shell_integration.osc633 = false
$env.config.shell_integration.osc133 = true
$env.config.highlight_resolved_externals = true # true enables highlighting of external commands in the repl resolved by which.
$env.config.ls.use_ls_colors = true
$env.config.completions.use_ls_colors = true
$env.config.cursor_shape.emacs = 'block'

# use
use ./modules/fnm.nu

# use ~/.config/nushell/.cache/starship/init.nu

source ./.cache/starship.nu
# source ./.cache/oh-my-posh.nu
source ./.cache/zoxide.nu
source ./themes/everforest.nu
source ./themes/ls_colors.nu
source ./.cache/carapace.nu
source ./modules/for-work.nu

# source ./completions/git.nu
# source ./completions/cargo.nu
# source ./completions/npm.nu
# source ./completions/pnpm.nu

alias d = nr dev
alias s = nr start
alias b = nr build
alias t = nr test
alias tu = nr test -u
alias c = nr typecheck
alias l = nr lint
alias lf = nr lint --fix
alias release = nr release
# alias lg = lazygit
def --env lg [] {
  lazygit
}
alias clear = clear -a

# export extern "nr" [
#   command?: string@"nu-complete get scripts"
#   --help(-h)                         # Print help information
# ]

