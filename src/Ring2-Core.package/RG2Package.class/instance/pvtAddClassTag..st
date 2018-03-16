private - backend interface
pvtAddClassTag: aSymbol
	
	tagsForClasses isRing2Resolved ifFalse: [ 
		self pvtCleanTagsForClasses  ].
	
	tagsForClasses add: aSymbol.	
	