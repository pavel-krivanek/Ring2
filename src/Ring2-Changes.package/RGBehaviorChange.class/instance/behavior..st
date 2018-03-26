accessing
behavior: anRGBehavior

	(anRGBehavior environment = self recorder environment)
		ifFalse: [ RGWrongEnvironment signal ].

	behavior := anRGBehavior.
	
	behaviorName := anRGBehavior hasResolvedName
		ifTrue: [ anRGBehavior name. ]
		ifFalse: [ nil ].