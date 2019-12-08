#!/bin/bash

DIR=.

[[ ! -z "$1" ]] && DIR=$1

explorer $(cygpath -w $DIR)
