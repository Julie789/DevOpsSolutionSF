#!/bin/bash
set -eo pipefail
jobInfo() {
 local _job="${1}"
 echo $_job
 for key in "${!job[@]}"; do
   echo "key=$key, value=${job[$key]}"
   done
}
jobInfo "$job"