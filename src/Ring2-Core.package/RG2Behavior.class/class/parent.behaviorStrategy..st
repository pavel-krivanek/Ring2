as yet unclassified
parent: anRGObject behaviorStrategy: aRG2BehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: aRG2BehaviorStrategy;
		parent: anRGObject;
		initialize.
	aRG2BehaviorStrategy initialize.
	^ aBehavior
