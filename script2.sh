#!/bin/bash
cat file1.csv file2.csv > target_file.csv
sed -i 1i"Age,workclass,fnlwgt,education,education-num,marital-status,occupation,relationship,race,sex,capital-gain,capital-loss,hours-per-week,native-country,class" target_file.csv
sed -i 's/?/2018101011/g' target_file.csv

