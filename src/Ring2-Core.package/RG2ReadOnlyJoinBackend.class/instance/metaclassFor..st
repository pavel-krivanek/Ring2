behavior
metaclassFor: aRG2Behavior

	^ self operation: [ :backend :definition |
			backend metaclassFor: definition ]
		on: aRG2Behavior
	