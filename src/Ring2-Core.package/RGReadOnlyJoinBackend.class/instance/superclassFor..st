behavior
superclassFor: aRGBehavior

	^ self operation: [ :backend :definition |
			backend superclassFor: definition ]
		on: aRGBehavior	

	
	
	
