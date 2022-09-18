# aliases

#alias ls "ls -p -G"
alias la "ls -a"
alias ll "ls -l"
alias lla "ll -a"
alias vim "nvim"
alias ls "exa"
alias cpp "clang++ -std=c++20"
set -gx TERM xterm-256color
set -x JAVA_HOME (/usr/libexec/java_home -v 18.0.1.1)
#alias vim "lvim"
# set -o nvim
# EDITOR=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"
fish_add_path -g /Users/tuananh/Library/Python/3.9/bin
fish_add_path -g /usr/local/lib/python3.9/site-packages/pynvim/
fish_add_path -g /Users/tuananh/.cargo/bin
fish_add_path -g /Users/tuananh/.local/bin/
 # set fish_greeting
 function fish_greeting 
 # echo "Hello AnhTuan"
 echo "♓🎗👢👢⚽  🅰🎵♓🌴⛎🅰🎵"
 end

 # funcsave fish_greeting
