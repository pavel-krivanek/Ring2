caching
replaceName: aSymbol with: aNewSymbol

	| aRGBehavior |
	aRGBehavior := behaviorsDictionary at: aSymbol ifAbsent: [ nil ].
	aRGBehavior ifNotNil: [ 
		behaviorsDictionary removeKey: aSymbol.
		behaviorsDictionary at: aNewSymbol put: aRGBehavior.
		 ]
	