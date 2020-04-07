#! /bin/bash

echo "core name : $CPHP_SOLR_CORE_NAME "

solr_ping=$(curl -s -o /dev/null -I -w "%{http_code}"  -X GET http://solr:8983/solr/$CPHP_SOLR_CORE_NAME/admin/ping)

if [ $solr_ping -eq 200 ];
then
    echo "ping works"
else
    echo "ping failed"
fi

solr_status=$(curl -s -o -I -w "%{http_code}"  -X GET http://solr:8983/solr/admin/cores -d "action=STATUS" -d "core=$CPHP_SOLR_CORE_NAME")

if [ $solr_status -eq 200 ];
then
    echo "status works"
else
    echo "status failed"
fi

echo "status : $solr_status | ping: $solr_ping"
