as yet unclassified
canMergeWith: aRG2Definition visited: visitedDefinitions

	| newVisited |

	(visitedDefinitions includes: self) ifTrue: [ ^ true ].
	
	(self isRing2FullyResolved or: [ aRG2Definition isRing2FullyResolved]) ifTrue: [^ true].

	(super canMergeWith: aRG2Definition visited: visitedDefinitions) ifFalse: [ ^ false ].

	newVisited := visitedDefinitions copyWith: self.
	
	self superclass ~~ self ifTrue: [ 
		(self superclass canMergeWith: aRG2Definition superclass visited: newVisited) ifFalse: [ ^ false ]].

	self metaclass ~~ self ifTrue: [ 
		(self metaclass canMergeWith: aRG2Definition metaclass visited: newVisited) ifFalse: [ ^ false ]].
	
	^ true.