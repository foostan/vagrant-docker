#!/bin/bash

echo
echo "SERF_EVENT:       ${SERF_EVENT}"
echo "SERF_SELF_NAME:   ${SERF_SELF_NAME}"
echo "SERF_SELF_ROLE:   ${SERF_SELF_ROLE}"
echo "SERF_SELF_TAG:    ${SERF_SELF_TAG}"
echo "SERF_TAG_ROLE:    ${SERF_TAG_ROLE}"
echo "SERF_USER_EVENT:  ${SERF_USER_EVENT}"
echo "SERF_USER_LTIME:  ${SERF_USER_LTIME}"
echo "SERF_QUERY_NAME:  ${SERF_QUERY_NAME}"
echo "SERF_QUERY_LTIME: ${SERF_QUERY_LTIME}"
while read line; do
  echo "event data:       ${line}"
done
