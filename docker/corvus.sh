#!/bin/bash
set -x

dir=`ls /opt/corvus`

if [ -z "${dir}" ];then
  cd /src
  cp -R corvus-0.2.6 /opt
  mv /opt/corvus-0.2.6 /opt/corvus
fi

/opt/corvus/src/corvus /opt/corvus/src/corvus.conf && tail -f /dev/null
