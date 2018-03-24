as yet unclassified
named: aName parent: anRGObject behaviorStrategy: aRGBehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: aRGBehaviorStrategy;
		parent: anRGObject;
		initialize.
	aRGBehaviorStrategy initialize.
	^ aBehavior
		pvtName: aName asSymbol;
		yourself		
