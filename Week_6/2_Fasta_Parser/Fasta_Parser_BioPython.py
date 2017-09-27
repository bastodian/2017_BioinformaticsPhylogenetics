#!/usr/bin/env python

'''
    Script to sort a mixed Fasta file containing nucleotide and protein sequences
    using BioPython
'''

from sys import argv
from sys import stdout
from sys import stderr
from Bio import SeqIO, Seq

import warnings
from Bio import BiopythonWarning
warnings.simplefilter('ignore', BiopythonWarning)

InFile = argv[1]

with open(InFile, 'rU') as FastaFile:
    for Record in SeqIO.parse(FastaFile, "fasta"):
        try:
            stdout.write('>%s\n%s\n' % (str(Record.description), \
                    Seq.Seq(str(Record.seq))))
        except Exception:
            stderr.write('>%s\n%s\n' % (str(Record.description), \
                    Seq.Seq(str(Record.seq))))
