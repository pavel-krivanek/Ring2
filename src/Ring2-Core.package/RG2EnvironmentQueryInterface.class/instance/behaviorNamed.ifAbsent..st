as yet unclassified
behaviorNamed: aSymbol ifAbsent: aBlock

	^ self behaviorsDictionary at: aSymbol asSymbol ifAbsent: aBlock
	"	
	self behaviorsDo: [:each |
		(each name = aSymbol) ifTrue: [ ^ each ] ].
	
	^ nil
	"