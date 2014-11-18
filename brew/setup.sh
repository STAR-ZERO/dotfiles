#!/bin/bash

cd $(dirname $0)

brew update

while read in; do brew tap "$in"; done < Taps

brew install $(cat Brewfile|grep -v "#")

