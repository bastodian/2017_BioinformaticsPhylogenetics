# UOG ML Bioinformatics Course 2017

## Command Reference

Most Linux tools/programs are documented
```
man		# display manual for a command
		man program
		q	quits te manual page
		/	allows searching manual page for patterns
		n	moves to the next hit of the pattern search
		p	moves to the previous hit of the pattern search
```

Basic commands to navigate the file system:
```
pwd		# display the path name of the current working directory

cd		# change a current directory to a new directory
		.  (dot)	 	current directory
		.. (dot dot) 	parent diretory
		~ 			home directory
      
ls		# list names of directories and files
		-a	list hidden files
		-l 	list detailed info about directory and file
		-h 	display size of files in human readable format
		-r	reverse order while sorting
		-S	sort by file size, largest first
		-t   sort by modification time, newest first
       
mkdir		# create a directory
		-p	create parent directories, as necessary
	
rm		# remove a file
		-r	recursive, wll delete directories and their contents
		-v	verbose output

cp		# copy a file to another
		-r	(recursive) to copy a directory and its subdirectory to another
		-v verbose output
      
mv 		# move or rename files (and directories)

```
