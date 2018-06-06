behavior
metaclassFor: anRGBehavior

	^ self operation: [ :backend :definition |
			backend metaclassFor: definition ]
		on: anRGBehavior
	