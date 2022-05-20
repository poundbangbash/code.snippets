#!/bin/bash
repodir="/Library/WebServer/Documents/repo/pkgsinfo/printqueues/meredith"
activequeuelist="ny2s006-r6004c ny4e131-r6004c ny4e135-r6004c ny4e210-r6004c ny4health-r6004exc ny4n221-r6004exc ny4s306-r6004exc ny4s325-r6004exc ny4s434-r6004exc ny4s610-r6004exc ny5e018-r6004exc ny5e227-r6004exc ny5s118-r6004exc ny5s546-r6004exc ny5s620-r6004exc ny5w124-r6004exc ny5w130a-r6004c ny5w130b-r6004c ny6e211-r6004exc ny6n106a-r6004c ny6n106b-r6004c ny6n124-r6004exc ny6ne-r6004c ny6s-r6004c ny6s126-r6004c ny6s128-r420dnc ny6s128-r6004c ny6tk-r3504exc ny6w116-r6004exc ny7e110-r6004exc ny7e119-r7110c ny7e119b-r6004c ny7n106a-r6004c ny7n106b-r6004c ny7n133a-r6004c ny7n133b-r6004c ny7n214-r6004exc ny7s201-r6004exc ny7s220a-r6004c ny7s220b-r6004c ny7s238-r6004exc ny7s401-r6004exc ny7s425a-r6004c ny7s425b-r6004c ny7s550-r6004exc ny7s610-r6004c ny7s617-r6004exc ny7s617b-r6004c ny7w116-r6004exc ny8e138a-r6004c ny8e138b-r6004c ny8e138c-r6004c ny8e138d-r6004c ny8n106-r6004exc ny8n122-r6004exc ny8n122b-r6004c ny8n133a-r6004c ny8n133b-r6004c ny8n133c-r6004c ny8n214-r6004exc ny8s201-r6004exc ny8s239a-r6004c ny8s239b-r6004c ny8s425-r6004exc ny8s546a-r6004c ny8s546b-r6004c ny8s610-r6004exc ny8s618-r6004exc ny8w116-r6004exc ny9n106-r6004exc ny9n106b-r6004c ny9n214a-r6004c ny9n214b-r6004c ny9s130-r6004c ny9s136-r6004exc ny9s201a-r6004c ny9s201b-r6004c ny9s425-r6004exc ny9s514a-r6004c ny9s514b-r6004c ny9s549a-r6004c ny9s549b-r6004c ny9s610-r6004exc ny9s619-r6004exc ny9w116-r6004exc ny9w116b-r6004c nyc2e401-r6004exc nyc2w500-r6004exc nypc-custom-r7110c nypc-standard-r7110c nyphoto-r252dnc"

nyprinters=$(ls -1 ${repodir}/ny*)

for printqueue in $nyprinters
do
    filename=$(basename -- "$printqueue")
    filename="${filename%.*}"
    shortfilename="${filename%-*}"
    
    if [[ "$activequeuelist" == *"$shortfilename"* ]]
    then
        echo "============================================================================"
        echo ""
        echo "Name: $(defaults read ${repodir}/${filename} name)"
        echo ""
        echo "Requires: $(defaults read ${repodir}/${filename} requires)"
        echo ""
        echo "Install Script: $(defaults read ${repodir}/${filename} postinstall_script)"
        echo ""
        echo "============================================================================"
        echo ""
        echo ""
    fi
done
