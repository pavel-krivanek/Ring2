instance creation
named: aString parent: aRG2Definition

	^ (RG2Behavior unresolved)
		behaviorStrategy: self newStrategy;
		yourself