instance creation
named: aString

	^ (RG2Behavior named: aString)
		behaviorStrategy: self newStrategy;
		yourself