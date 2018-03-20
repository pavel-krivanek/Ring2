private - backend access
removeClassVariable: aRG2InstanceVariableDefinition

	self owner announceDefinitionChangeDuring: [ 
		self backend forBehavior removeClassVariable: aRG2InstanceVariableDefinition from: self owner ].