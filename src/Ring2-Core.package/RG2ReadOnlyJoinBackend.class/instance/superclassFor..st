behavior
superclassFor: aRG2BehaviorDefinition

	^ self operation: [ :backend :definition |
			backend superclassFor: definition ]
		on: aRG2BehaviorDefinition	

	
	
	
