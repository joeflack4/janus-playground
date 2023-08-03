MAIN_DIR=janusgraph-full-1.0.0-rc2

if [ -f "$MAIN_DIR/bin/poc-setup.sh.bak" ]; then
  echo
else
  cp $MAIN_DIR/bin/poc-setup.sh $MAIN_DIR/bin/poc-setup.sh.bak
  cp config/poc-setup.sh $MAIN_DIR/bin/poc-setup.sh
fi