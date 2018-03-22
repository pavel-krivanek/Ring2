accessing
behavior: aRG2Behavior

	self environment: aRG2Behavior environment.
	
	behavior := aRG2Behavior.
	
	behaviorName := aRG2Behavior hasResolvedName
		ifTrue: [ aRG2Behavior name. ]
		ifFalse: [ nil ].