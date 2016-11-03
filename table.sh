#!/bin/bash

mkdir Tables/
for name in `ls CSV\ files`; do cp table.html Tables/${name::-3}html; done;
for name in `ls Tables`; do sed -i -e "s|data.csv|${name::-4}csv|g" Tables/$name; done;
cp CSV\ files/* Tables/
rm -rf CSV\ files/
