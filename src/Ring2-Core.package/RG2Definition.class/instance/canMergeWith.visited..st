merging
canMergeWith: aRG2Definition visited: visitedDefinitions

	(visitedDefinitions includes: self) ifTrue: [ ^ true ].

	(self hasResolvedName not or: [ aRG2Definition hasResolvedName not]) ifTrue: [ ^ true ].
	
	^ (self nameOrNil == aRG2Definition nameOrNil)
