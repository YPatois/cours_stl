#!/bin/bash
#set -e
SCRIPTBASEDIR=$(dirname $(readlink -f $0))
export SCRIPTBASEDIR

FLIST=`ls $SCRIPTBASEDIR/*.tex $SCRIPTBASEDIR/Makefile`

echo $FLIST | tr ' ' '\n' > $SCRIPTBASEDIR/watchfiles.txt

cat $SCRIPTBASEDIR/watchfiles.txt

# Global variable to store the PID of the last action
PREV_PID=""

function do_make() {
    make >& make.ylog
    if [ $? -ne 0 ]; then
        cat make.ylog
    fi
    return 0
}

function handle_change() {
    # Kill the previous action if it's still running
    if [ -n "$PREV_PID" ]; then
        echo "killing $PREV_PID"
        kill "$PREV_PID" 2>/dev/null
    fi

    # Start new action in the background
    (   
        cd $SCRIPTBASEDIR
        echo "In $SCRIPTBASEDIR making tex files"
        /usr/bin/nice -n 19 make -j4
        echo "build done"
    ) &
    PREV_PID=$!
}

# Start monitoring with inotifywait
inotifywait --recursive --monitor --event modify,create,move --fromfile $SCRIPTBASEDIR/watchfiles.txt | while read path action file; do
    echo `date`" - File $file has been $action in $path"
    handle_change
done
