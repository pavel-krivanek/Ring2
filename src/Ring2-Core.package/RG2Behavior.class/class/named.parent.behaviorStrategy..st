as yet unclassified
named: aName parent: anRGObject behaviorStrategy: aRG2BehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: aRG2BehaviorStrategy;
		parent: anRGObject;
		initialize.
	aRG2BehaviorStrategy initialize.
	^ aBehavior
		pvtName: aName asSymbol;
		yourself		
