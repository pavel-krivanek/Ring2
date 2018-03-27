accessing
behavior: anRGBehavior

	| id |
	
	(anRGBehavior environment = self recorder environment)
		ifFalse: [ RGWrongEnvironment signal ].

	behavior := anRGBehavior.
	id := self recorder registerOrigin: behavior.
	
	behaviorName := anRGBehavior hasResolvedName
		ifTrue: [ anRGBehavior name. ]
		ifFalse: [ nil ].
		
	^ id