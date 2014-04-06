#!/bin/sh

echo
echo "$0 triggered!"
echo
echo "SERF_EVENT is ${SERF_EVENT}"
echo "SERF_SELF_NAME is ${SERF_SELF_NAME}"
echo "SERF_SELF_ROLE is ${SERF_SELF_ROLE}"
echo "SERF_SELF_TAG is ${SERF_SELF_TAG}"
echo "SERF_TAG_ROLE is ${SERF_TAG_ROLE}"
echo "SERF_USER_EVENT is ${SERF_USER_EVENT}"
echo "SERF_USER_LTIME is ${SERF_USER_LTIME}"
echo "SERF_QUERY_NAME is ${SERF_QUERY_NAME}"
echo "SERF_QUERY_LTIME is ${SERF_QUERY_LTIME}"
echo
echo "BEGIN event data"
while read line; do
  echo $line
done
echo "END event data"
echo "$0 finished!"
echo