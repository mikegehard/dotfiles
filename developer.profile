PATH="/Users/msgehard/Developer/bin:/Users/msgehard/Developer/share/npm/bin:/Users/msgehard/Developer/sbin:$PATH"; export PATH
MANPATH="/Users/msgehard/Developer/share/man:$MANPATH"; export MANPATH
CFLAGS="-I/Users/msgehard/Developer/include"; export CFLAGS
CPPFLAGS="-I/Users/msgehard/Developer/include"; export CPPFLAGS
CXXFLAGS="-I/Users/msgehard/Developer/include"; export CXXFLAGS
LDFLAGS="-L/Users/msgehard/Developer/lib"; export LDFLAGS
NODE_PATH="/Users/msgehard/Developer/lib/node"; export NODE_PATH

export CONFIGURE_ARGS="--with-cflags='$CFLAGS' --with-ldflags='$LDFLAGS'"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

NODE_PATH="/Users/msgehard/Developer/lib/node:/Users/msgehard/Developer/lib/node_modules"; export NODE_PATH

# Aliases for stuff installed via homebrew
alias startmysql="mysql.server start"
alias stopmysql="mysql.server stop"
alias startpg="/Users/msgehard/Developer/bin/pg_ctl -D /Users/msgehard/Developer/var/postgres -l /Users/msgehard/Developer/var/postgres/server.log start"
alias stoppg="/Users/msgehard/Developer/bin/pg_ctl -D /Users/msgehard/Developer/var/postgres stop -s -m fast"
alias startmongo="/Users/msgehard/Developer/bin/mongod run --config /Users/msgehard/Developer/etc/mongod.conf --fork --logpath /Users/msgehard/Developer/var/log/mongodb/output.log"
alias stopmongo="killall mongod"
alias startmemcached="memcached -d"
alias stopmemcached="killall memcached"
alias startredis="redis-server /Users/msgehard/Developer/etc/redis.conf"
alias stopredis="killall redis-server"

# Aliases for quickly switching to various folders
alias rubydev='cd ~/workspace/rubyDevelopment'
alias dev='cd ~/workspace'
alias jsdev='cd ~/workspace/jsDevelopment'
alias pythondev='cd ~/workspace/pythonDevelopment'
alias rails_source_dev='cd ~/workspace/rubyDevelopment/rails_source/rails'

# Drip setup (https://github.com/flatland/drip)
export JAVACMD=drip
