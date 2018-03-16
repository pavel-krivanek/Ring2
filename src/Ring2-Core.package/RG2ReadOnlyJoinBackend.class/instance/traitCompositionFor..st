behavior
traitCompositionFor: aRG2Behavior

	^ self operation: [ :backend :definition |
			backend traitCompositionFor: definition ]
		on: aRG2Behavior
	