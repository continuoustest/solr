#! /bin/bash

url -sw %{http_code} -X GET http://solr:8983/solr/${CPHP_SOLR_CORE_NAME}/admin/ping

curl -sw %{http_code} -X GET http://solr:8983/solr/admin/cores -d "action=STATUS" -d "core=$CPHP_SOLR_CORE_NAME"
