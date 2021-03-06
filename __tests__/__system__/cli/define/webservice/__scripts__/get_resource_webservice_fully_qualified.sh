#!/usr/bin/env bash
set -e # fail the script if we get a non zero exit code

region_name=$1
csd_group=$2
HOST=$3
PORT=$4
USER=$5
PASSWORD=$6
PROTOCOL=$7
REJECT=$8

zowe cics get resource CICSDefinitionWebService --region-name "$region_name" --parameter "CSDGROUP($csd_group)" --host $HOST --port $PORT --user $USER --password $PASSWORD --protocol "$PROTOCOL" --reject-unauthorized "$REJECT"
