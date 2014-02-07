PATH="/usr/local/bin:/usr/local/share/npm/bin:/usr/local/sbin:$PATH"; export PATH

GOPATH="/Users/mike/workspace/goDev"; export GOPATH

MANPATH="/Users/msgehard/Developer/share/man:$MANPATH"; export MANPATH

export CONFIGURE_ARGS="--with-cflags='$CFLAGS' --with-ldflags='$LDFLAGS'"

NODE_PATH="/Users/msgehard/Developer/lib/node:/Users/msgehard/Developer/lib/node_modules"; export NODE_PATH

# Aliases for stuff installed via homebrew
alias startmysql="mysql.server start"
alias stopmysql="mysql.server stop"
alias startpg="/usr/local/bin/pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppg="/usr/local/bin/pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias startmongo="/Users/msgehard/Developer/bin/mongod run --config /Users/msgehard/Developer/etc/mongod.conf --fork --logpath /Users/msgehard/Developer/var/log/mongodb/output.log"
alias stopmongo="killall mongod"
alias startmemcached="memcached -d"
alias stopmemcached="killall memcached"
alias startredis="redis-server /Users/msgehard/Developer/etc/redis.conf"
alias stopredis="killall redis-server"

# Aliases for quickly switching to various folders
alias rubydev='cd ~/workspace/rubyDevelopment'
alias retrospectrdev='cd ~/workspace/scalaDev/playSites/retrospectr'
alias dev='cd ~/workspace'
alias jsdev='cd ~/workspace/jsDevelopment'
alias pythondev='cd ~/workspace/pythonDevelopment'
alias rails_source_dev='cd ~/workspace/rubyDevelopment/rails_source/rails'

eval "$(rbenv init -)"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
source /Users/mike/.tmuxinator/tmuxinator.bash
