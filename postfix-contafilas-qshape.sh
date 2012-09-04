#!/bin/bash

# getmailq.sh - written by Valec 2006. Steal and share.

# o uso é bastante simples: ./postfix-contafilas-qshape.sh [fila]
# exemplo: ./postfix-contafilas-qshape.sh incoming

QUEUES="incoming active deferred hold corrupt"
 
for i in $QUEUES; do
	COUNT=`qshape $i | grep TOTAL | awk '{print $2}'`
	printf "$i:$COUNT "
done
