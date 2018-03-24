private - backend access
pvtRemoveClassVariable: aRGInstanceVariableDefinition

	self environment verifyOwnership: aRGInstanceVariableDefinition.
	
	classVariables remove: aRGInstanceVariableDefinition.