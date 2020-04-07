#! /bin/bash

solr_ping=$(curl -s -o /dev/null -I -w "%{http_code}"  -X GET http://solr:8983/solr/${CPHP_SOLR_CORE_NAME}/admin/ping)

solr_status=$(curl -s -o /dev/null -I -w "%{http_code}"  -X GET http://solr:8983/solr/admin/cores -d "action=STATUS" -d "core=$CPHP_SOLR_CORE_NAME")

if [ $solr_ping -eq 200 ] && [ $solr_status -eq 200];
then
    exit 0
fi

exit 1
