as yet unclassified
named: aName parent: aRG2Definition behaviorStrategy: aRG2BehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: aRG2BehaviorStrategy;
		parent: aRG2Definition;
		initialize.
	aRG2BehaviorStrategy initialize.
	^ aBehavior
		pvtName: aName asSymbol;
		yourself		
