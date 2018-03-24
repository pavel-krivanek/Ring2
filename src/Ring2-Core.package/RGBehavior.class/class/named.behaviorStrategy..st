as yet unclassified
named: aName behaviorStrategy: aRGBehaviorStrategy

	| aBehavior |
	
	aBehavior := self basicNew
		behaviorStrategy: aRGBehaviorStrategy;
		initialize.
	aRGBehaviorStrategy initialize.
	^ aBehavior
		pvtName: aName asSymbol;
		yourself		
