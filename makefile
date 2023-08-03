.PHONY=setup install start stop
MAIN_DIR=janusgraph-full-1.0.0-rc2

setup:
	sh bin/setup.sh

console:
	echo "Starting gremlin console"
	echo Some useful commands:
	echo :help
	echo :exit
	echo To connect to the remote server (as seen in poc-gremlin-console.sh comments):
	echo :remote connect tinkerpop.server conf/remote.yaml
	echo Once connected, then do:
	echo :remote console
	sh $(MAIN_DIR)/bin/poc-gremlin-console.sh

logs:
	tail -f $(MAIN_DIR)/logs/janusgraph.log

# install: i'm not sure if an install is needed
#install: setup start stop

stop:
	sh $(MAIN_DIR)/bin/poc-server-stop.sh

start:
	sh $(MAIN_DIR)/bin/poc-server-start.sh
