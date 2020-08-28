#!/bin/bash
# usage: ./upgrade-datadog-agent.sh <API_KEY>

helm upgrade -f values.yaml --set datadog.apiKey=$1 datadog-agent datadog/datadog

