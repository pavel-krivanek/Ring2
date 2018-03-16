accessing - backend
addClassVariable: aRG2InstanceVariableDefinition 

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior addClassVariable: aRG2InstanceVariableDefinition to: self ]
	
	