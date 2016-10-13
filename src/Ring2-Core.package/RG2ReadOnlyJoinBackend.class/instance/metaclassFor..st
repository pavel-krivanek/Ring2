behavior
metaclassFor: aRG2BehaviorDefinition

	^ self operation: [ :backend :definition |
			backend metaclassFor: definition ]
		on: aRG2BehaviorDefinition
	