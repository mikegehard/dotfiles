export CONFIGURE_ARGS="--with-cflags='$CFLAGS' --with-ldflags='$LDFLAGS'"

# Aliases for stuff installed via homebrew
alias startmysql="mysql.server start"
alias stopmysql="mysql.server stop"
alias pgstart="/usr/local/bin/pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="/usr/local/bin/pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias startmongo="/Users/msgehard/Developer/bin/mongod run --config /Users/msgehard/Developer/etc/mongod.conf --fork --logpath /Users/msgehard/Developer/var/log/mongodb/output.log"
alias stopmongo="killall mongod"
alias startmemcached="memcached -d"
alias stopmemcached="killall memcached"
alias redisstart="redis-server /usr/local/etc/redis.conf"
alias redisstop="killall redis-server"

alias tomcatstart="/usr/local/Cellar/tomcat/7.0.53/libexec/bin/startup.sh"
alias tomcatstop="/usr/local/Cellar/tomcat/7.0.53/libexec/bin/shutdown.sh"
alias springboot="/usr/local/bin/spring"

eval "$(rbenv init -)"
eval "$(jenv init -)"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
source /Users/mike/.tmuxinator/tmuxinator.bash
