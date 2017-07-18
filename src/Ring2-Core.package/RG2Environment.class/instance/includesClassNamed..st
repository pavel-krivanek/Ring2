as yet unclassified
includesClassNamed: aSymbol 

	(self behaviorNamed: aSymbol)
		ifNotNil: [ ^ true ].
		
			
	self globalVariablesDo: [ :global | 
		(global name = aSymbol) ifTrue: [^ true]].
	
	^ false.