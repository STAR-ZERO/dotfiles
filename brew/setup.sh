#!/bin/bash

cd $(dirname $0)

brew update

brew install $(cat Brewfile|grep -v "#")

