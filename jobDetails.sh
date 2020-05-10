#!/bin/bash
set -eo pipefail
jobInfo() {
 local _job="${1}"
 echo $_job
 return $?
}
jobInfo "$job"