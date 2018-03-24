actions
applyIn: aRGEnvironment

	| aRGBehavior |
	
	aRGBehavior  := (self environment == aRGEnvironment)
		ifTrue: [ behavior ]
		ifFalse: [ aRGEnvironment ask behaviorNamed: behaviorName ifAbsent: [ RGNotFoundError signal ] ].
		
	aRGBehavior name: newName.
		
	