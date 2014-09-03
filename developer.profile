export CONFIGURE_ARGS="--with-cflags='$CFLAGS' --with-ldflags='$LDFLAGS'"

export GOPATH=$HOME/workspace/goDev
export PATH=$PATH:$GOPATH/bin

# Aliases for stuff installed via homebrew
alias pg="/usr/local/bin/pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="/usr/local/bin/pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias redis="redis-server /usr/local/etc/redis.conf"
alias redisstop="killall redis-server"
alias elasticsearch="elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml"
alias elasticsearchstop="killall elasticsearch"

alias tomcat="/usr/local/Cellar/tomcat/7.0.53/libexec/bin/startup.sh"
alias tomcatstop="/usr/local/Cellar/tomcat/7.0.53/libexec/bin/shutdown.sh"

eval "$(rbenv init -)"
eval "$(jenv init -)"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
source /Users/mike/.tmuxinator/tmuxinator.bash
