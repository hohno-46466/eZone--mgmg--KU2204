#!/bin/sh
type gdate > /dev/null 2>&1 && alias date=gdate
[ "x$TSKEY" = "x" ] && TSKEY='$USER-$$'
cat "$@" | sed -u -e 's/^/echo "'$TSKEY'\t$(date +%s.%3N\)\t/' -e 's/$/"/' | /bin/sh
