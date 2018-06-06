behavior
superclassFor: anRGBehavior

	^ self operation: [ :backend :definition |
			backend superclassFor: definition ]
		on: anRGBehavior	

	
	
	
