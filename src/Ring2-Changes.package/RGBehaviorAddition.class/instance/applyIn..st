actions
applyIn: aRGEnvironment

	| aRGBehavior newBehavior |
	
	aRGBehavior := (self environment == aRGEnvironment)
		ifTrue: [ behavior ]
		ifFalse: [ behaviorName ifNotNil: [ aRGEnvironment ask behaviorNamed: behaviorName ] ].
	
	aRGBehavior ifNotNil: [ 
		"the behavior already exists in the environment"
		^ self ].
	
	behaviorName ifNil: [ 
		RGNotFoundError signal: 'Unknonw name of the behavior that should be created' ].
	
	newBehavior := RGBehavior named: behaviorName parent: aRGEnvironment behaviorStrategy: self newStrategy.
	aRGEnvironment addBehavior: newBehavior
		
		
	