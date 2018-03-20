as yet unclassified
unnamedWithBehaviorStrategy: aRG2BehaviorStrategy

	| aBehavior |
	
	aBehavior := self basicNew
		behaviorStrategy: aRG2BehaviorStrategy;
		initialize.
	aRG2BehaviorStrategy initialize.
	^ aBehavior
