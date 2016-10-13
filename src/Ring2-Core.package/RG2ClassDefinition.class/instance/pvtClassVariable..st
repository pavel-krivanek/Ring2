private - backend access
pvtClassVariable: aRG2InstanceVariableDefinition

	self environment verifyOwnership: aRG2InstanceVariableDefinition.
	
	classVariables remove: aRG2InstanceVariableDefinition.