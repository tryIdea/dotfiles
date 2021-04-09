#! /bin/bash -xv

usage="Usage: `basename $0` (new|get|delete) parameter1"
VULTR_API_KEY=EJWIFCHEUV7765GJXKGKTE56F3ZWOXJ7VRKQ

command=$1
instanceId=$2

#locations=("ewr" "ord" "dfw" "sea" "lax" "atl" "ams" "lhr" "fra" "sjc" "syd" "yto" "cdg" "nrt" "icn" "mia" "sgp")
function newInstance() {
  curl "https://api.vultr.com/v2/instances" \
   -X POST \
   -H "Authorization: Bearer $VULTR_API_KEY" \
   -H "Content-Type: application/json" \
   --data-raw '{
     "region" : "sea",
     "plan" : "vc2-1c-1gb",
     "label" : "ssr Instance",
     "snapshot_id" : "a7cecbf0-df4b-4236-8a26-076b010be858",
     "backups" : "disabled"
   }'
}

function getInstance(){
  curl "https://api.vultr.com/v2/instances" -X GET -H "Authorization: Bearer $VULTR_API_KEY"
}

function deleteInstance(){
  curl "https://api.vultr.com/v2/instances/$instanceId" \
    -X DELETE \
    -H "Authorization: Bearer $VULTR_API_KEY"
}

case $command in
 		(new)
        newInstance
        ;;
    (get)
        getInstance
        ;;
    (delete)
        deleteInstance
        ;;
    (*)
        echo "Error command"
        echo "$usage"
        ;;
esac
