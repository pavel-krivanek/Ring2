as yet unclassified
replaceName: aSymbol with: aNewSymbol

	| aRG2Behavior |
	aRG2Behavior := behaviorsDictionary at: aSymbol ifAbsent: [ nil ].
	aRG2Behavior ifNotNil: [ 
		behaviorsDictionary removeKey: aSymbol.
		behaviorsDictionary at: aNewSymbol put: aRG2Behavior.
		 ]
	