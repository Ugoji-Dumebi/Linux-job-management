#!/bin/bash
set -m
# Process and Job Management Project
echo "starting two background process..."

sleep 500 &
SLEEP_PID=$!
echo "Started sleep 500 background with PID $SLEEP_PID"

tail -f /dev/null &
TAIL_PID=$!
echo "Started tail -f /dev/null in background with PID $TAIL_PID"

echo "LIST OF JOBS"
jobs

echo "LIST OF PROCESS"
ps -ef # this shows all running processess including the jobs just created

echo "bringing job to foreground"
fg 1
fg 2

echo "bringing jobs back to backgound"
bg 1 # this takes job back to background after suspending it with ctrl z
bg 2

echo "KILLING JOBs GRACEFULLY..."
kill -15 %1
kill -15 %2
ps -ef # to confirm jobs were killed sucessfully


echo "ALL PROCESS SUCCESSFULLY COMPLETED..."
