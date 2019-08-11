#!/bin/sh

netName=assignment3
docker container run --rm -it --network $netName centos:7

# Sample Output
# [root@cdcab34cb94c /]# curl -s search:9200
#{
#  "name" : "Deacon Frost",
#  "cluster_name" : "elasticsearch",
#  "cluster_uuid" : "l0d_4bq-QNCFiMcKMqKRmw",
#  "version" : {
#    "number" : "2.4.6",
#    "build_hash" : "5376dca9f70f3abef96a77f4bb22720ace8240fd",
#    "build_timestamp" : "2017-07-18T12:17:44Z",
#    "build_snapshot" : false,
#    "lucene_version" : "5.5.4"
#  },
#  "tagline" : "You Know, for Search"
#}
#[root@cdcab34cb94c /]# curl -s search:9200
#{
#  "name" : "Erik Magnus Lehnsherr",
#  "cluster_name" : "elasticsearch",
#  "cluster_uuid" : "wqGwbRbhTBW6EWqiOntB4g",
#  "version" : {
#    "number" : "2.4.6",
#    "build_hash" : "5376dca9f70f3abef96a77f4bb22720ace8240fd",
#    "build_timestamp" : "2017-07-18T12:17:44Z",
#    "build_snapshot" : false,
#    "lucene_version" : "5.5.4"
#  },
#  "tagline" : "You Know, for Search"
#}

