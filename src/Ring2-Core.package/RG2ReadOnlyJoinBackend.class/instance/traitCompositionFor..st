behavior
traitCompositionFor: aRG2BehaviorDefinition

	^ self operation: [ :backend :definition |
			backend traitCompositionFor: definition ]
		on: aRG2BehaviorDefinition
	