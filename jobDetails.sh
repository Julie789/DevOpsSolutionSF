#!/bin/bash
set -eo pipefail
jobInfo() {
 local _commits="${1}", _commits_url="${2}", _workflow="${3}", _workspace="${4}"
 local _commit_str="The number of commits committed to $_commits_url are $_commits !"
 local _workspace_str="The workflow $_workflow tested the initial checks in workspace $_workspace"
 echo $_commit_str
 echo $_workspace_str
 return $?
}
jobInfo "$commits" "$commits_url" "$workflow" "$workspace"
RET=$?
if [ ${RET} -ne 0 ] ; then
 echo 'ERR: Failed to give job details' > /dev/stderr
else
 echo 'DEBUG: Job Details displayed' > /dev/stderr
fi