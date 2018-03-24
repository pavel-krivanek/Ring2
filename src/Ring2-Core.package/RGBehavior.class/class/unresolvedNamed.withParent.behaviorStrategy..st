as yet unclassified
unresolvedNamed: aName withParent: anRGObject behaviorStrategy: aRGBehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: aRGBehaviorStrategy;
		parent: anRGObject;
		initializeUnresolved.
	aRGBehaviorStrategy initializeUnresolved.
	^ aBehavior
		pvtName: aName asSymbol;
		yourself		
