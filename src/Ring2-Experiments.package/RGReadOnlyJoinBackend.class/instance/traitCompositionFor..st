behavior
traitCompositionFor: anRGBehavior

	^ self operation: [ :backend :definition |
			backend traitCompositionFor: definition ]
		on: anRGBehavior
	