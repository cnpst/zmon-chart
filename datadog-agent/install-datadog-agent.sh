#!/bin/bash
# usage: ./install-datadog-agent.sh <API_KEY>

if [ $# -eq 0 ]
  then
    echo "no api key provided. usage: ./install-datadog-agent.sh <API_KEY>"
    exit
fi

helm install datadog-agent -f values.yaml  --set datadog.apiKey=$1 datadog/datadog --set targetSystem=linux

