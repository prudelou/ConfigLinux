#!/bin/sh

# Include toolbox functions.
. ./functions.sh

# Configuration file path.
conf="confExemple"

# Variable -> Get [branche5]CONTENT from $conf.
variable=$(getConf branche5 CONTENT $conf)

displaySTIM

log "Variable = $variable"

