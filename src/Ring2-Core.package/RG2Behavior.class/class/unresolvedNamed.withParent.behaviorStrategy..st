as yet unclassified
unresolvedNamed: aName withParent: anRGObject behaviorStrategy: aRG2BehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: aRG2BehaviorStrategy;
		parent: anRGObject;
		initializeUnresolved.
	aRG2BehaviorStrategy initializeUnresolved.
	^ aBehavior
		pvtName: aName asSymbol;
		yourself		
