accessing
behavior: anRGBehavior

	self environment: anRGBehavior environment.
	
	behavior := anRGBehavior.
	
	behaviorName := anRGBehavior hasResolvedName
		ifTrue: [ anRGBehavior name. ]
		ifFalse: [ nil ].