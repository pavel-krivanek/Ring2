as yet unclassified
unresolvedWithParent: aRG2Definition behaviorStrategy: aRG2BehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: aRG2BehaviorStrategy;
		parent: aRG2Definition;
		initializeUnresolved.
	aRG2BehaviorStrategy initializeUnresolved.
	^ aBehavior
