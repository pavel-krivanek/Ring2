behavior
layoutFor: aRG2Behavior

	^ self operation: [ :backend :definition |
			backend layoutFor: definition ]
		on: aRG2Behavior
	