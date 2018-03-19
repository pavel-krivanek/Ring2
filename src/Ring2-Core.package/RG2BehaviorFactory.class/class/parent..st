instance creation
parent: aRG2Definition

	^ (RG2Behavior parent: aRG2Definition)
		behaviorStrategy: self newStrategy;
		yourself