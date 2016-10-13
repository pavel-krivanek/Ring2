behavior
layoutFor: aRG2BehaviorDefinition

	^ self operation: [ :backend :definition |
			backend layoutFor: definition ]
		on: aRG2BehaviorDefinition
	