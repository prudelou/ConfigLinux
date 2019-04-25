#!/bin/sh


# Functions ======================================================


# =========== getConf() =============
# Return value of a specific category from a conf file.
# Parameters:
# 	$1 -> Category name
# 	$2 -> Attribute name
# 	$3 -> Configuration file path
getConf(){
echo $(awk '/^\['$1'\]/{f=1} f==1&&/^'$2'/{$1=$2="";print $0;exit}' $3)
}
# ========= end getConf() ===========


# End Functions ==================================================
