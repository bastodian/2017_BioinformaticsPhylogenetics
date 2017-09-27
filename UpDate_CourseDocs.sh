#!/bin/bash

# Script to update the course files in your directory
# Makes a copy of your data prior to downloading new data
# The copy of your data is then synchronized with the new 
# files to preserve any changes you made to your files

rsync -r --exclude '~/2017_BioinformaticsPhylogenetics/.git' ~/2017_BioinformaticsPhylogenetics ~/.TEMP && \
cd 2017_BioinformaticsPhylogenetics && git pull && \
rsync -r --exclude '~/.TEMP/.git' ~/.TEMP/2017_BioinformaticsPhylogenetics/ ~/2017_BioinformaticsPhylogenetics
