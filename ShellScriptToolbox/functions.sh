#!/bin/sh


# Functions ======================================================


# ============= get() ===============
# Return value of a specific category from a conf file.
# Parameters:
# 	$1 -> Category name
# 	$2 -> Attribute name
# 	$3 -> Configuration file path
get(){
echo $(awk '/^\['$1'\]/{f=1} f==1&&/^'$2'/{$1=$2="";print $0;exit}' $3)
}
# =========== end get() =============


# End Functions ==================================================

# Configuration file path
conf="confExemple"

# Variable -> Get [branche5]CONTENT
variable=$(get branche5 CONTENT $conf)

echo "Variable = $variable"
