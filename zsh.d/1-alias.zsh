# Disable autocorrect on certain commands
alias mv='nocorrect mv'
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'

# Make ls colorful if possible
if ls -F --color=auto >&/dev/null; then
  alias ls="ls --color=auto -F"
else
  alias ls="ls -F"
fi

# Shortcuts for moving/making directories
alias md='mkdir -p'
alias rd='rmdir'
alias cd..='cd ..'
alias ..='cd ..'

# Never use emacs window
alias em="emacs -nw"

# Special uses of rsync to do cp and mv with a progress bar
alias rscp="rsync -aP --no-whole-file --inplace"
alias rsmv="rscp --remove-source-files"

# Shortcut to rebuild using standard make setup
alias remake="make clean && make"

# Simple HTTP server
alias http="python -m SimpleHTTPServer"
