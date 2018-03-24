actions
reverseIn: anRGEnvironment

	| anRGBehavior |
	
	anRGBehavior  := (self environment == anRGEnvironment)
		ifTrue: [ behavior ]
		ifFalse: [ 
			anRGEnvironment ask behaviorNamed: newName ifAbsent: [ RGNotFoundError signal ] ].
		
	anRGBehavior unresolveName.
	
	^ anRGBehavior
		
	