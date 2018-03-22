actions
applyIn: aRG2Environment

	| aRG2Behavior |
	
	aRG2Behavior  := (self environment == aRG2Environment)
		ifTrue: [ behavior ]
		ifFalse: [ RG2NotFoundError signal ].
		
	aRG2Behavior name: newName.
		
	