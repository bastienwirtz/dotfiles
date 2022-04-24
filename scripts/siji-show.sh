#!/bin/bash

codes="0 1 2 3 4 5 6 7 8 9 a b c d e f"

for code0 in $codes; do
	for code1 in $codes; do
		for code2 in $codes; do
			printf "e$code0$code1$code2 - \ue$code0$code1$code2\n"
		done
	done
done
