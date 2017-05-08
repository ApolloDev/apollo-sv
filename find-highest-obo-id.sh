#!/bin/sh

grep -o -r --include="*.owl" "APOLLO_SV_[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" ./ | cut -d":" -f2 | sort -u | tail -10