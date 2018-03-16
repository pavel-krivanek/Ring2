as yet unclassified
canMergeWith: aRG2Definition visited: visitedDefinitions

	(super canMergeWith: aRG2Definition visited: visitedDefinitions) ifFalse: [ ^ false ].
	
	"TODO: other elements? collections?"

	((self hasResolved: #comment) and: [aRG2Definition hasResolved: #comment])
		ifTrue: [	(self comment canMergeWith: aRG2Definition comment visited: visitedDefinitions ) ifFalse: [^ false]].

	((self hasResolved: #category) and: [aRG2Definition hasResolved: #category])
		ifTrue: [	(self category ~= aRG2Definition category) ifTrue: [^ false]].

	^ true.