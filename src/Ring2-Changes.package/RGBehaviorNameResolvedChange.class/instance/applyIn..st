actions
applyIn: anRGEnvironment

	| anRGBehavior |
	
	anRGBehavior := (self environment == anRGEnvironment)
		ifTrue: [ behavior ]
		ifFalse: [
			behaviorName
				ifNil: [ RGNotFoundError signal ]
				ifNotNil: [ 	anRGEnvironment ask behaviorNamed: behaviorName ifAbsent: [ RGNotFoundError signal ] ] ].
		
	anRGBehavior name: newName.
		
	