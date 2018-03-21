private - backend access
pvtRemoveSharedPool: aRG2PoolVariableDefinition

	self environment verifyOwnership: aRG2PoolVariableDefinition.
	
	sharedPools remove: aRG2PoolVariableDefinition.