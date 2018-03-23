actions
applyIn: aRG2Environment

	| aRG2Behavior newBehavior |
	
	aRG2Behavior := (self environment == aRG2Environment)
		ifTrue: [ behavior ]
		ifFalse: [ behaviorName ifNotNil: [ aRG2Environment ask behaviorNamed: behaviorName ] ].
	
	aRG2Behavior ifNotNil: [ 
		"the behavior already exists in the environment"
		^ self ].
	
	behaviorName ifNil: [ 
		RG2NotFoundError signal: 'Unknonw name of the behavior that should be created' ].
	
	newBehavior := RG2Behavior named: behaviorName parent: aRG2Environment behaviorStrategy: self newStrategy.
	aRG2Environment addBehavior: newBehavior
		
		
	