actions
createStrategyIn: anRGBehavior

	| strategyClass strategy |
	
	strategyClass := self class environment at: behaviorStrategyClassName.
	
	strategy := strategyClass basicNew.
	anRGBehavior behaviorStrategy: strategy.