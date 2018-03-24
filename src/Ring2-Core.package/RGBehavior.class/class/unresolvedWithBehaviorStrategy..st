as yet unclassified
unresolvedWithBehaviorStrategy: aRGBehaviorStrategy

	| aBehavior |
	
	aBehavior := self basicNew
		behaviorStrategy: aRGBehaviorStrategy;
		initializeUnresolved.
	aRGBehaviorStrategy initializeUnresolved.
	^ aBehavior
