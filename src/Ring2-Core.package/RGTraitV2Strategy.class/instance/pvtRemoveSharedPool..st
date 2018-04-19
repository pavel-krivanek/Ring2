private - backend access
pvtRemoveSharedPool: anRGPoolVariableDefinition

	self environment verifyOwnership: anRGPoolVariableDefinition.
	
	sharedPools remove: anRGPoolVariableDefinition.