*Calypso-Ring2
includesLocalSelector: aSymbol
	^self localMethods anySatisfy: [ :each | each name = aSymbol ].