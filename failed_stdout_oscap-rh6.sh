#!/bin/sh
#
#

cd /usr/local/etc/stig/runscap

rm -f stig.txt

/usr/bin/oscap xccdf eval rhel6-v2r1-benchmark.xml > stig.txt

/usr/local/etc/stig/runscap/failed_oscap_rules.py | grep SV | cut -d "-" -f2| cut -c 1-5
/usr/local/etc/stig/runscap/failed_oscap_rules.py
