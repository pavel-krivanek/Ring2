actions
reverseIn: aRGEnvironment

	| aRGBehavior |
	
	aRGBehavior  := (self environment == aRGEnvironment)
		ifTrue: [ behavior ]
		ifFalse: [ 
			aRGEnvironment ask behaviorNamed: newName ifAbsent: [ RGNotFoundError signal ] ].
		
	aRGBehavior unresolveName.
	
	^ aRGBehavior
		
	