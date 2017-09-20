#!/usr/bin/env python

import sys

BLAST_Results_File = sys.argv[1]

BLAST_Hits = {}
Query = ''

with open (BLAST_Results_File, 'r') as BLAST_Results:
	for Line in BLAST_Results:
		if '#' not in Line:
			LineAsList = Line.rstrip().split('\t')
			NewQuery = LineAsList[0]
			DB_Hit = LineAsList[1]
			if Query != NewQuery:
				Query = NewQuery
				BLAST_Hits[Query] = []
				BLAST_Hits[Query].append(DB_Hit)
			else:
				BLAST_Hits[Query].append(DB_Hit)
				
for Query, Hits in BLAST_Hits.iteritems():
	print Query, ':\t', len(Hits)
