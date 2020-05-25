# export CONFIGURE_ARGS="--with-cflags='$CFLAGS' --with-ldflags='$LDFLAGS'"

# export GOPATH=$HOME/workspace/goDev
# export PATH=$PATH:$GOPATH/bin

# Aliases for stuff installed via homebrew
# alias pg="/usr/local/bin/pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
# alias pgstop="/usr/local/bin/pg_ctl -D /usr/local/var/postgres stop -s -m fast"
# alias redis="redis-server /usr/local/etc/redis.conf > /tmp/redis.log &"
# alias redisstop="killall redis-server"
# alias elasticsearch="elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml > /tmp/elasticsearch.log &"
# alias elasticsearchstop="killall elasticsearch"
alias k=kubectl

# alias tomcat="/usr/local/Cellar/tomcat/7.0.53/libexec/bin/startup.sh"
# alias tomcatstop="/usr/local/Cellar/tomcat/7.0.53/libexec/bin/shutdown.sh"

eval "$(rbenv init -)"
# source /Users/mike/.tmuxinator/tmuxinator.bash

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/mikegehard/google-cloud-sdk/path.bash.inc' ]; then . '/Users/mikegehard/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/mikegehard/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/mikegehard/google-cloud-sdk/completion.bash.inc'; fi
