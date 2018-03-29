actions
newStrategy

	| strategyClass |
	
	strategyClass := self class environment at: self behaviorStrategyClassName.
	^ strategyClass basicNew.
