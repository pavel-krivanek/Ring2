actions
applyIn: anRGEnvironment

	| anRGBehavior newBehavior |
	
	anRGBehavior := (self environment == anRGEnvironment)
		ifTrue: [ behavior ]
		ifFalse: [ behaviorName ifNotNil: [ anRGEnvironment ask behaviorNamed: behaviorName ] ].
	
	anRGBehavior ifNotNil: [ 
		"the behavior already exists in the environment"
		^ self ].
	
	behaviorName ifNil: [ 
		RGNotFoundError signal: 'Unknonw name of the behavior that should be created' ].
	
	newBehavior := RGBehavior named: behaviorName parent: anRGEnvironment behaviorStrategy: self newStrategy.
	anRGEnvironment addBehavior: newBehavior
		
		
	