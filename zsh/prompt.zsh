# npm install -g spaceship-prompt

autoload -U promptinit; promptinit
prompt spaceship

SPACESHIP_BATTERY_THRESHOLD=100
# SPACESHIP_BATTERY_SHOW=always

SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  package       # Package version
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_RPROMPT_ORDER=(
  node          # Node.js section
  ruby          # Ruby section
  golang        # Go section
  docker        # Docker section
)

SPACESHIP_UNUSED=(
  time          # Time stamps section
  user          # Username section
  host          # Hostname section
  vi_mode       # Vi-mode indicator
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  terraform     # Terraform workspace section
)
