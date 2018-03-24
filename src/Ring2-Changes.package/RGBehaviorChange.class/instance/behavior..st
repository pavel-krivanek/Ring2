accessing
behavior: aRGBehavior

	self environment: aRGBehavior environment.
	
	behavior := aRGBehavior.
	
	behaviorName := aRGBehavior hasResolvedName
		ifTrue: [ aRGBehavior name. ]
		ifFalse: [ nil ].