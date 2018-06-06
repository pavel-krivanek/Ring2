behavior
layoutFor: anRGBehavior

	^ self operation: [ :backend :definition |
			backend layoutFor: definition ]
		on: anRGBehavior
	