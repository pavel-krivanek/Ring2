as yet unclassified
behaviorNamed: aSymbol ifAbsent: aBlock

	| found | 
	
	found := self behaviorNamedExactlyAs: aSymbol ifAbsent: [nil].
	found ifNotNil: [ ^ found ].
	
	found := self behaviorNamedExactlyAs: (aSymbol, ' class') asSymbol ifAbsent: [nil].
		found ifNotNil: [ ^ found baseClass ].
	
	found := self behaviorNamedExactlyAs: (aSymbol, ' classTrait') asSymbol ifAbsent: [nil].
		found ifNotNil: [ ^ found baseTrait ].
		
	^ aBlock value.