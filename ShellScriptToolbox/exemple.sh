#!/bin/sh

# Include toolbox functions.
. ./functions.sh

# Configuration file path.
conf="confExemple"

# Variable -> Get [branche5]CONTENT from $conf.
variable=$(get branche5 CONTENT $conf)

echo "Variable = $variable"

