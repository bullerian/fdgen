Script for generating binary tree or list file & directory structures

Usage:
fdgen [OPTION]...

	Recursively generates 10 directories with 10 files inside
	in current path

	-l --	Number of levels of directories
	-f --	Number of files in each directory
	-p --	Where to place created structure
	-t --	Generate full complete binary tree with
		depth dirDepth and fileCount files in each directory
	-e --	Set extension for created files (*.tmp by default)
	-f --	Set file name prefix ("file" by default)
	-d --	Set directory name prefix ("dir" by default)
