private - backend access
pvtRemoveClassVariable: anRGInstanceVariableDefinition

	self environment verifyOwnership: anRGInstanceVariableDefinition.
	
	classVariables remove: anRGInstanceVariableDefinition.