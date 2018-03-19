as yet unclassified
named: aName behaviorStrategy: aRG2BehaviorStrategy

	| aBehavior |
	
	aBehavior := self basicNew
		behaviorStrategy: aRG2BehaviorStrategy;
		initialize.
	aRG2BehaviorStrategy initialize.
	^ aBehavior
		pvtName: aName asSymbol;
		yourself		
