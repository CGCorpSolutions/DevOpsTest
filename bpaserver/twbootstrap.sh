#!/bin/sh
cd `dirname $0`

echo "BOOTSTRAPPING: Making directories"
for i in `cat ./dir.list`; do
	mkdir -p $i
	chmod 777 $i
done

echo "BOOTSTRAPPING: Doing other things - TBD"
