#!/bin/bash
# filter for packages in the class "monitoring"

# Usage:
# [command] [array_search_filter] [source_.json]
#
# Example:
# $ ./jq.sh monitoring packages.json
# 
# Explanation:
# [./jq.sh]       Run the jq.sh bash script
# [monitoring]    Filter .json contents for the 'monitoring' class array
# [packages.json] Name of json structured array index

list_SOURCE=$2
show_CLASS=$1

jq -r --arg search $show_CLASS '.[$search][] | "\(.name)"' "$list_SOURCE"

# EXAMPLES:
# jq -r --arg search $show_CLASS '.[$search][] | "\(.name)"' "$list_SOURCE"
# jq -r --arg search $show_CLASS '.[$search][] | "\(.name) ==> \(.version)"' packages.json"'


