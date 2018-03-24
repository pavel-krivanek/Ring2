as yet unclassified
unresolvedWithParent: anRGObject behaviorStrategy: aRGBehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: aRGBehaviorStrategy;
		parent: anRGObject;
		initializeUnresolved.
	aRGBehaviorStrategy initializeUnresolved.
	^ aBehavior
