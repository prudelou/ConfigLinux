#!/bin/sh

# ================================================================
# functions.sh
# Author: Pierre Rudelou
# Description: Toolbox functions for shellscripts(sh).
# ================================================================


# Functions ======================================================

	# =========== getConf() =============
	# Return value of a specific category from a conf file.
	# Parameters:
	# 	$1 -> Category name.
	# 	$2 -> Attribute name.
	# 	$3 -> Configuration file path.
	getConf(){
		echo $(awk '/^\['$1'\]/{f=1} f==1&&/^'$2'/{$1=$2="";print $0;exit}' $3)
	}
	# ========= end getConf() ===========


	# ============= log() ===============
	# Display a log with parameter text + date.
	# Parameter:
	#	$1 -> Log text to display.
	log(){
		echo
		echo ====================================
		date +'%Y/%m/%d-%H:%M:%S'
		echo $1
		echo ====================================
		echo
	}
	# =========== end log() =============

# End Functions ==================================================
