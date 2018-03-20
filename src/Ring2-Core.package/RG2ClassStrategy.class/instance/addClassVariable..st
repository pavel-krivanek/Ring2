private - backend access
addClassVariable: aRG2InstanceVariableDefinition 

	self owner announceDefinitionChangeDuring: [ 
		self backend forBehavior addClassVariable: aRG2InstanceVariableDefinition to: self owner ]
	
	