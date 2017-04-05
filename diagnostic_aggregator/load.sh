#!/bin/bash
catkin_make
for ((i=1; i<=50; i++))
do
  echo "test $i"
  rostest ../../../src/diagnostics/diagnostic_aggregator/test/launch/test_add_agg.launch&
  
done
