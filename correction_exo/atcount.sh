#!/bin/bash

f=$1

echo "NUmber of C atoms in $f:"
sed 's/[^C]//g' $f | tr -d '\'n | wc -c

echo "NUmber of H atoms in $f:"
sed 's/[^H]//g' $f | tr -d '\'n | wc -c

echo "NUmber of O atoms in $f:"
sed 's/[^O]//g' $f | tr -d '\'n | wc -c

echo "NUmber of N atoms in $f:"
sed 's/[^N]//g' $f | tr -d '\'n | wc -c



