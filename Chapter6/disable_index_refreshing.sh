#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Disable index refreshing

curl -XPUT elasticsearch-node-01:9200/twitter/_settings -d '{
    "index" : {
        "refresh_interval" : "-1"
    }
}'

