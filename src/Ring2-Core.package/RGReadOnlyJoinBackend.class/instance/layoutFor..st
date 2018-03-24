behavior
layoutFor: aRGBehavior

	^ self operation: [ :backend :definition |
			backend layoutFor: definition ]
		on: aRGBehavior
	