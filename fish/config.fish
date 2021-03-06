set __fish_git_prompt_color_branch blue

set -gx fish_user_paths ~/.bin ~/.work-bin
set -gx EDITOR vim

function whitespace_after_prompt --on-event fish_preexec
    printf "\n"
end

# Directory list in cyan rather than a hard to see blue
set -gx LSCOLORS gxfxcxdxbxegedabagacad

set -gx AUTOPROXY_HTTP_PROXY 192.168.0.50:7770
set -gx AUTOPROXY_HTTPS_PROXY 192.168.0.50:7770

alias ec2="autoproxied --condition='dig +short myip.opendns.com @resolver1.opendns.com | egrep \"^(10|50|52|70.96)\\.\"' --invert ec2"
alias aws="autoproxied --condition='dig +short myip.opendns.com @resolver1.opendns.com | egrep \"^(10|50|52|70.96)\\.\"' --invert aws"
alias temp="cd (mktemp -d /tmp/XXXXXXXX); open ."

complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

