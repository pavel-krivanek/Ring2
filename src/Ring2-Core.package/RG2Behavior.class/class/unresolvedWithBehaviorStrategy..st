as yet unclassified
unresolvedWithBehaviorStrategy: aRG2BehaviorStrategy

	| aBehavior |
	
	aBehavior := self basicNew
		behaviorStrategy: aRG2BehaviorStrategy;
		initializeUnresolved.
	aRG2BehaviorStrategy initializeUnresolved.
	^ aBehavior
