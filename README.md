Script for generating binary tree or list file & directory structures

Usage:
fdgen [OPTION] dirDepth fileCount

	W/O options recursively generates directories with depth dirDepth
	and fileCount files in each directory 

	-b -- 	generate full complete binary tree with
		depth dirDepth and fileCount files in each directory

	-e --	Set extension for created files (*.tmp by default)
	-f --	Set file name prefix ("file" by default)
	-d --	Set directory name prefix ("dir" by default)
