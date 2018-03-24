merging
merge: anRGObject

	| sourceHasResolvedName |
	
	sourceHasResolvedName := anRGObject hasResolvedName.
	
	((self hasResolvedName) 
		and: ( sourceHasResolvedName 
		and: [ self name ~~ anRGObject name]))
			ifTrue: [ RGMergeError property: #name target: self source: anRGObject ].
	
	sourceHasResolvedName
		ifTrue: [ self name: anRGObject name ].

