as yet unclassified
canMergeWith: aRG2Definition

	(super canMergeWith: aRG2Definition) ifFalse: [ ^ false ].
	
	self superclass ~~ self ifTrue: [ 
		(self superclass canMergeWith: aRG2Definition superclass) ifFalse: [ ^ false ]].

	self metaclass ~~ self ifTrue: [ 
		(self metaclass canMergeWith: aRG2Definition superclass) ifFalse: [ ^ false ]].
	
	^ true.