actions
createStrategyIn: aRGBehavior

	| strategyClass strategy |
	
	strategyClass := self class environment at: behaviorStrategyClassName.
	
	strategy := strategyClass basicNew.
	aRGBehavior behaviorStrategy: strategy.