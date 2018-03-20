as yet unclassified
unresolvedNamed: aName withParent: aRG2Definition behaviorStrategy: aRG2BehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: aRG2BehaviorStrategy;
		parent: aRG2Definition;
		initializeUnresolved.
	aRG2BehaviorStrategy initializeUnresolved.
	^ aBehavior
		pvtName: aName asSymbol;
		yourself		
