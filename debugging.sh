#!/bin/bash
set -eEuo pipefail -T
trap 'echo "The command [ ${BASH_COMMAND} ] on line number (${LINENO})"' DEBUG

echo start

for i in {1..4} asd {6..10}; do
   (
      [[ "${i}" == "asd" ]] && ${i}
   ) 1>/dev/null 2>&1 &
done
wait

exit 0
