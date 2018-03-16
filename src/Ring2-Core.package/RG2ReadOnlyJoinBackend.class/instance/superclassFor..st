behavior
superclassFor: aRG2Behavior

	^ self operation: [ :backend :definition |
			backend superclassFor: definition ]
		on: aRG2Behavior	

	
	
	
