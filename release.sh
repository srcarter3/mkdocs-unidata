#!/bin/bash
pushd ~/mkdocs-unidata
PACKAGE_VERSION=$(cat package.json | grep version | head -1 | awk -F: '{ print $2 }'| sed 's/[",]//g' | tr -d '[[:space:]]')
#INSTALL_VERSION=$(pip freeze|grep mkdocs-unidata| cut -d"=" -f3)
INSTALL_VERSION="1.5.6"
IFS='.' read -r -a vers <<< "$INSTALL_VERSION"
inc=$((${vers[2]}+1))
next_release="${vers[0]}.${vers[1]}.$inc"

if [[ $INSTALL_VERSION == $PACKAGE_VERSION ]]; then
  echo "$INSTALL_VERSION is installed and you're trying to build $PACKAGE_VERSION"
  read -p "increment to ${next_release}?" -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    $(sed -i '' -e 's/'$INSTALL_VERSION'/'$next_release'/' package.json)
  fi
  exit
fi

#git add package.json
#git commit -m "incremental release $next_release"
echo "$INSTALL_VERSION is installed"
echo "$PACKAGE_VERSION to be released"

rm -rf dist/mkdocs*unidata-$PACKAGE_VERSION.*
python setup.py sdist bdist_wheel

twine upload dist/*
