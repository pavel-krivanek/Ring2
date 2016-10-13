private - backend access
pvtRemoveGlobalVariable: aRG2GlobalVariableDefinition

	self environment verifyOwnership: aRG2GlobalVariableDefinition.
	
	globalVariables remove: aRG2GlobalVariableDefinition.