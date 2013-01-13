#!/bin/bash

filename=$1
tempfile=$(mktemp tmpXXX.$filename)

echo get $filename -o $tempfile
echo shell vim $tempfile
echo put -E $tempfile -o $filename
