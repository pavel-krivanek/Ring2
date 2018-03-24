private - backend access
addClassVariable: aRGInstanceVariableDefinition 

	self owner announceDefinitionChangeDuring: [ 
		self privAddClassVariable: aRGInstanceVariableDefinition ]
	
	