actions
newStrategy

	| strategyClass |
	
	strategyClass := self class environment at: behaviorStrategyClassName.
	^ strategyClass basicNew.
