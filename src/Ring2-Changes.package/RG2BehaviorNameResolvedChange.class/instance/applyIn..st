actions
applyIn: aRG2Environment

	| aRG2Behavior |
	
	aRG2Behavior := (self environment == aRG2Environment)
		ifTrue: [ behavior ]
		ifFalse: [
			behaviorName
				ifNil: [ RG2NotFoundError signal ]
				ifNotNil: [ 	aRG2Environment ask behaviorNamed: behaviorName ifAbsent: [ RG2NotFoundError signal ] ] ].
		
	aRG2Behavior name: newName.
		
	