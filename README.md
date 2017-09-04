# UOG ML Bioinformatics Course 2017

## Command Reference

### Most Linux tools/programs are documented with man pages:
```
man		# display manual for a command
		man program
		q	quits te manual page
		/	allows searching manual page for patterns
		n	moves to the next hit of the pattern search
		p	moves to the previous hit of the pattern search
```

### Basic commands to navigate the file system:
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
		-t	sort by modification time, newest first
       
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

### Archived and Compressed Files

You will encounter various forms of archives, compressed and uncompressed, when working in the shell. Below are examples of how to uncompress files with the extensions .tar, .tar.gz, and .tar.bz2. It is easy to create a tar archive (a tarball) and examples are given. For gzip and zip archives I only outlined how to uncompress them.


#### tar archives
```bash
tar xvf foo.tar
## unpacks the archive foo.tar
tar xvfz foo.tar.gz
## unpacks and uncompresses the compressed archive foo.tar.gz
tar cvzf foo.tar.gz foo1.txt foo2.txt
## compresses and archives the files foo1.txt and foo2.txt into foo.tar.gz
tar cvzf foo.tar.gz dir1 dir2
## same as above but applied to the directories dir1 and dir2
tar xvfj foo.tar.bz2
## sometimes tar archives come compressed using bzip2
## this is how you uncompress these archives
```

You may sometimes see a tar archive with a .tgz extension. This is equivalent to a tar.gz extension and should be treated identically.

To look at the files in a tar archive without uncompressing use:

```bash
tar -tf yourfile.tar
```

#### gzip Archives

```bash
gunzip foo.gz
## uncompresses the gzip archive foo.gz
gzip foo.tar
## compress foo.tar -- results in foo.tar.gz
```

#### zip Archives

```bash
unzip foo.zip
## uncompresses foo.zip
```
