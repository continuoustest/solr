#! /bin/bash

curl -sw \'%{http_code}\' http://solr-${CPHP_SERVICE_SOLR}:8983/solr/core-name-${CPHP_SERVICE_SOLR}/admin/ping
