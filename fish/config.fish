fish_vi_key_bindings

## Vim Config

set -Ux EDITOR vim
fish_add_path ~/.npm-global/bin
fish_add_path ~/bin/

## Add homebrew path
fish_add_path /opt/homebrew/bin /opt/homebrew/sbin 

## Set OSX budspencer dependencies
if test (uname -s) = "Darwin"
  set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
  set -gx PATH /usr/local/opt/gnu-sed/libexec/gnubin $PATH
end

set -U budspencer_no_cd_bookmark

thefuck --alias | source
