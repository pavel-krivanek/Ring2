as yet unclassified
unnamedWithBehaviorStrategy: aRGBehaviorStrategy

	| aBehavior |
	
	aBehavior := self basicNew
		behaviorStrategy: aRGBehaviorStrategy;
		initialize.
	aRGBehaviorStrategy initialize.
	^ aBehavior
