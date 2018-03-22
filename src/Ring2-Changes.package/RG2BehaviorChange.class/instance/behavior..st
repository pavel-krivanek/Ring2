accessing
behavior: aRG2Behavior

	self environment: aRG2Behavior environment.
	
	aRG2Behavior hasResolvedName
		ifTrue: [ 
			behavior := nil.
			behaviorName := aRG2Behavior name. ]
		ifFalse: [ 
			behavior := aRG2Behavior name.
			behaviorName := nil ].