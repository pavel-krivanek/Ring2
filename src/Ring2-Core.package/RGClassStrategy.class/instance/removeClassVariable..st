private - backend access
removeClassVariable: aRGInstanceVariableDefinition

	self owner announceDefinitionChangeDuring: [ 
		self backend forBehavior removeClassVariable: aRGInstanceVariableDefinition from: self owner ].