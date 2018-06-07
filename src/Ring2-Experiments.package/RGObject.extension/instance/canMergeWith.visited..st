*Ring2-Experiments
canMergeWith: anRGObject visited: visitedDefinitions

	(visitedDefinitions includes: self) ifTrue: [ ^ true ].

	(self hasResolvedName not or: [ anRGObject hasResolvedName not]) ifTrue: [ ^ true ].
	
	^ (self resolvedNameOrNil == anRGObject resolvedNameOrNil)
