actions
applyIn: aRGEnvironment

	| aRGBehavior |
	
	aRGBehavior := (self environment == aRGEnvironment)
		ifTrue: [ behavior ]
		ifFalse: [
			behaviorName
				ifNil: [ RGNotFoundError signal ]
				ifNotNil: [ 	aRGEnvironment ask behaviorNamed: behaviorName ifAbsent: [ RGNotFoundError signal ] ] ].
		
	aRGBehavior name: newName.
		
	