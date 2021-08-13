#!/bin/sh
#
#

HOSTNAME=`hostname | cut -d. -f1 | tr '[A-Z]' '[a-z]'`

m=`date +%-m`
d=`date +%-d`
yyyy=`date +%Y`

cd /usr/local/etc/stig/runscap

if [ -f runscap_in_progress ]; then
   exit 0
fi

touch runscap_in_progress

/usr/bin/oscap xccdf eval --results ${HOSTNAME}_RHEL6-V2R2-STIG_${m}-${d}-${yyyy}.xml rhel6-v2r2-benchmark.xml

rm -f runscap_in_progress

chmod 644 ${HOSTNAME}_RHEL6-V2R2-STIG_${m}-${d}-${yyyy}.xml
