as yet unclassified
copyForEnvironment: aRGEnvironment

	| newDefinition |
	
	newDefinition := self copy.
	newDefinition propertyNamed: #environment put: aRGEnvironment.
	newDefinition propertyNamed: #originalDefinition put: self.
	^ newDefinition
