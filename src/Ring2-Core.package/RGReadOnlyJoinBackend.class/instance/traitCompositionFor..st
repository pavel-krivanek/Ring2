behavior
traitCompositionFor: aRGBehavior

	^ self operation: [ :backend :definition |
			backend traitCompositionFor: definition ]
		on: aRGBehavior
	