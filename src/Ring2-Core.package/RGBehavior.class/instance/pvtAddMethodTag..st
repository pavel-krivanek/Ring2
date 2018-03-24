private - backend access
pvtAddMethodTag: aSymbol
	
	tagsForMethods isRing2Resolved ifFalse: [ 
		self pvtCleanTagsForMethods  ].
	
	tagsForMethods add: aSymbol.	
	