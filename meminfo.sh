#!/usr/bin/env bash
if [[ $OSTYPE =~ linux* ]]; then
	# Linux
	mem_info=($(free -m))
	TOTAL_MEM=${mem_info[7]}
	USED_MEM=${mem_info[15]}
	echo -n "${USED_MEM}/${TOTAL_MEM}MB"
fi
