as yet unclassified
compatibleWith: aRG2Definition

	(self class = aRG2Definition class)
		ifFalse: [ ^ false ].
		
	(self canMergeSimplyWith: aRG2Definition) ifTrue: [ ^ true ].
		
	^ (self name = aRG2Definition name)