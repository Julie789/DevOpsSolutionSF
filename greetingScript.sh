#!/bin/bash
set -eo pipefail
greeting() {
 local _GITHUB_USER="${1}"
 local _str="Hello, $_GITHUB_USER !"
 echo $_str
 return $?
}
greeting "$USER"
RET=$?
#if true || [ ${RET} -ne 0 ] ; then
if [ ${RET} -ne 0 ] ; then    #Removed by default true check, it will always go to if block
 echo 'ERR: Failed to give greeting' > /dev/stderr
else
 echo 'DEBUG: Greeted the Github User' > /dev/stderr
fi