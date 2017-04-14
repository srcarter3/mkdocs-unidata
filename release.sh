#!/bin/bash

PACKAGE_VERSION=$(cat package.json | grep version | head -1 | awk -F: '{ print $2 }'| sed 's/[",]//g' | tr -d '[[:space:]]')

echo "rm -rf dist/mkdocs*unidata-$PACKAGE_VERSION.*"
python setup.py sdist bdist_wheel

for file in `ls dist |grep $PACKAGE_VERSION`
do
  twine register dist/$file
  twine upload dist/$file
done
