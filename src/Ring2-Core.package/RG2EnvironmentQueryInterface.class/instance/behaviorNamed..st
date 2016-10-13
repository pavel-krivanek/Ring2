as yet unclassified
behaviorNamed: aSymbol
	
	self behaviorsDo: [:each |
		(each name = aSymbol) ifTrue: [ ^ each ] ].
	
	^ nil