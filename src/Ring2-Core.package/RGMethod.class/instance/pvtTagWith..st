private - backend interface
pvtTagWith: aSymbol
	
	tags isRing2Resolved ifFalse: [ 
		self pvtCleanTags  ].
	
	tags add: aSymbol.	
	