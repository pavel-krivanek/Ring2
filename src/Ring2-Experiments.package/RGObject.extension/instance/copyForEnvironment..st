*Ring2-Experiments
copyForEnvironment: anRGEnvironment

	| newDefinition |
	
	newDefinition := self copy.
	newDefinition propertyNamed: #environment put: anRGEnvironment.
	newDefinition propertyNamed: #originalDefinition put: self.
	^ newDefinition
