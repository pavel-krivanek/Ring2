DONE
removeClassVariable: aRG2InstanceVariableDefinition

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior removeClassVariable: aRG2InstanceVariableDefinition from: self ].