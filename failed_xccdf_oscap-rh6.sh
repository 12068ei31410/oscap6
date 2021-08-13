#!/bin/sh
#
#

cd /usr/local/etc/stig/runscap

/usr/bin/oscap xccdf eval rhel6-v2r1-benchmark.xml > stig.txt

/usr/local/etc/stig/runscap/failed_oscap_rule-rh6.py
