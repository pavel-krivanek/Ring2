behavior
metaclassFor: aRGBehavior

	^ self operation: [ :backend :definition |
			backend metaclassFor: definition ]
		on: aRGBehavior
	