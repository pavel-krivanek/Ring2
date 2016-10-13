merging
merge: aRG2Definition

	| sourceHasResolvedName |
	
	sourceHasResolvedName := aRG2Definition hasResolved: #name.
	
	((self hasResolved: #name) 
		and: ( sourceHasResolvedName 
		and: [ self name ~~ aRG2Definition name]))
			ifTrue: [ RG2MergeError property: #name target: self source: aRG2Definition ].
	
	sourceHasResolvedName
		ifTrue: [ self name: aRG2Definition name ].

