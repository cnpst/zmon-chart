#!/bin/bash
# usage: ./install-datadog-agent.sh <API_KEY>

helm install datadog-agent -f values.yaml  --set datadog.apiKey=$1 datadog/datadog --set targetSystem=linux

