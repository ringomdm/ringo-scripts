#!/bin/sh

echo "$(system_profiler SPPowerDataType | grep "Cycle Count" | awk '{print $3}')"