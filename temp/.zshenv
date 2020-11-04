#!/usr/bin/env bash

# Load the envsetting and paths and some:
for file in ~/.{exports,private}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
