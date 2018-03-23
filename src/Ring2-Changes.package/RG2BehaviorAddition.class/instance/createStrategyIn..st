actions
createStrategyIn: aRG2Behavior

	| strategyClass strategy |
	
	strategyClass := self class environment at: behaviorStrategyClassName.
	
	strategy := strategyClass basicNew.
	aRG2Behavior behaviorStrategy: strategy.