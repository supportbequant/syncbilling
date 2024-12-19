#!/bin/bash

# Set these variables to the specific values of your deployment
#

# BQN management IP address
BQN_OAM_IP=<bqn-oam-ip>
# Name of the REST user in the BQN server
BQN_REST_USER=<rest-user>
# Password of the REST user in the BQN server
BQN_REST_PW=<rest-password>
# IP address or domain of the Splynx server
SPLYNX_SERVER=<billing-ip>
# REST API KEY of the Splynx server
SPLYNX_KEY=<billing-key>
# Secret of the Splynx server
SPLYNX_SECRET=<billing-secret>

# Main part, do not modify
#

cd /root/splynx
./sync-splynx-bqn -v -b ${BQN_OAM_IP} ${BQN_REST_USER} ${BQN_REST_PW} -np -ns ${SPLYNX_SERVER} ${SPLYNX_KEY} ${SPLYNX_SECRET} >> /tmp/sync-splynx-bqn.log
