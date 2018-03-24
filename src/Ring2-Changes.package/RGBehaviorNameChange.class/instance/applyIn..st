actions
applyIn: anRGEnvironment

	| anRGBehavior |
	
	anRGBehavior  := (self environment == anRGEnvironment)
		ifTrue: [ behavior ]
		ifFalse: [ anRGEnvironment ask behaviorNamed: behaviorName ifAbsent: [ RGNotFoundError signal ] ].
		
	anRGBehavior name: newName.
		
	