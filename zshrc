export ZSH=~/.oh-my-zsh

ZSH_THEME="honukai"


ENABLE_CORRECTION="true"


plugins=(z git git-extras httpie zsh-autosuggestions)

# User configuration
export EDITOR='subl'
export PATH="$HOME/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin


# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=65536
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE='ls:cd:cd -:pwd:exit:date:* --help'

# Prefer US English and use UTF-8
export LANG='en_US'
export LC_ALL='en_US.UTF-8'

# Always enable colored `grep` output
export GREP_OPTIONS='--color=auto'

###
# man pages
###

# Highlight section titles in manual pages
export LESS_TERMCAP_md=$ORANGE

# Don’t clear the screen after quitting a manual page
export MANPAGER='less -X'

# tmuxinator
export DISABLE_AUTO_TITLE=true

source $ZSH/oh-my-zsh.sh


# work stuff

if [ -d /apollo/env/SDETools/bin ]; then
  export EDITOR='vim'
  export PATH="/apollo/env/SDETools/bin:$PATH"
  export PATH="$PATH:/apollo/env/envImprovement/bin"
  export PATH="$PATH:/apollo/env/AmazonAwsCli/bin"
  export PATH="$PATH:/apollo/env/BarkCLI/bin"
  ENV_IMPROVEMENT_ROOT=/apollo/env/envImprovement

  alias sync_dev="ninja-dev-sync"
  alias bba="brazil-build release & brazil-build apollo-pkg"
  alias bbr="brazil-build release"
  alias bb=brazil-build
  alias prv=post-review
  alias bbc="brazil-build clean"
  alias prvm="post-review --parent mainline"
fi


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# open ssl
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

/usr/libexec/java_home -v 1.8
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
