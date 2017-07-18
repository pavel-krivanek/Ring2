merging
canMergeWith: aRG2Definition visited: visitedDefinitions

	(visitedDefinitions includes: self) ifTrue: [ ^ true ].

	^ (self nameOrNil == aRG2Definition nameOrNil)
