#!/bin/sh
###############
# run_electrumx
###############

# configure electrumx
export COIN=Scicoin
export DAEMON_URL=http://olelectrumx:passelect21@127.0.0.1
#export DAEMON_URL=127.0.0.1
export NET=mainnet
export CACHE_MB=400
export DB_DIRECTORY=/home/pi/.electrumx/db
export SSL_CERTFILE=/home/pi/.electrumx/server.crt
export SSL_KEYFILE=/home/pi/.electrumx/server.key
export BANNER_FILE=/home/pi/.electrumx/banner
export DONATION_ADDRESS=your-donation-address

# connectivity
export HOST=
export TCP_PORT=57001
export SSL_PORT=57002

# visibility
export IRC=
export IRC_NICK=hostname
export REPORT_HOST=hostname.com
export RPC_PORT=8000

# run electrumx
ulimit -n 10000
/usr/local/bin/electrumx_server.py 2>> /home/pi/.electrumx/electrumx.log >> /home/pi/.electrumx/electrumx.log &

######################
# auto-start electrumx
######################

# add this line to crontab -e
# @reboot /path/to/run_electrumx.sh
