actions
reverseIn: aRG2Environment

	| aRG2Behavior |
	
	aRG2Behavior  := (self environment == aRG2Environment)
		ifTrue: [ behavior ]
		ifFalse: [ aRG2Environment ask behaviorNamed: newName ifAbsent: [ RG2NotFoundError signal ] ].
		
	aRG2Behavior pvtName: (aRG2Behavior unresolvedValue: aRG2Behavior unresolvedName).
		
	