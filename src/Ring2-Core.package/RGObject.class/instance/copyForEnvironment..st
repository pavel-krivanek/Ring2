as yet unclassified
copyForEnvironment: aRG2Environment

	| newDefinition |
	
	newDefinition := self copy.
	newDefinition propertyNamed: #environment put: aRG2Environment.
	newDefinition propertyNamed: #originalDefinition put: self.
	^ newDefinition
