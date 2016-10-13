private - backend access
pvtAddExclusion: aSymbol


	exclusions isRing2Resolved ifFalse: [ 
		self pvtCleanExclusions  ].
	
	exclusions add: aSymbol.	