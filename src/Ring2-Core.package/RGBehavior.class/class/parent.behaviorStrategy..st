as yet unclassified
parent: anRGObject behaviorStrategy: aRGBehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: aRGBehaviorStrategy;
		parent: anRGObject;
		initialize.
	aRGBehaviorStrategy initialize.
	^ aBehavior
