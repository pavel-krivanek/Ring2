instance creation
named: aString parent: aRG2Definition

	^ (RG2Behavior named: aString parent: aRG2Definition)
		behaviorStrategy: self newStrategy;
		yourself