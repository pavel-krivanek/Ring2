as yet unclassified
unresolvedWithParent: anRGObject behaviorStrategy: aRG2BehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: aRG2BehaviorStrategy;
		parent: anRGObject;
		initializeUnresolved.
	aRG2BehaviorStrategy initializeUnresolved.
	^ aBehavior
