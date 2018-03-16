private - backend access
pvtAddAlias: aSymbol

	aliases isRing2Resolved ifFalse: [ 
		self pvtCleanAliases  ].
	
	aliases add: aSymbol.	