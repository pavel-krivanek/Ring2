private - backend access
pvtRemoveSharedPool: aRGPoolVariableDefinition

	self environment verifyOwnership: aRGPoolVariableDefinition.
	
	sharedPools remove: aRGPoolVariableDefinition.