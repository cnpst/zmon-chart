#!/bin/bash
# usage: ./upgrade-datadog-agent.sh <API_KEY>

if [ $# -eq 0 ]
  then
    echo "no api key provided. usage: ./upgrade-datadog-agent.sh <API_KEY>"
    exit
fi

helm upgrade -f values.yaml --set datadog.apiKey=$1 datadog-agent datadog/datadog

