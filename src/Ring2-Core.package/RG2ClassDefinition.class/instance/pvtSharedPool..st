private - backend access
pvtSharedPool: aRG2PoolVariableDefinition

	self environment verifyOwnership: aRG2PoolVariableDefinition.
	
	sharedPools remove: aRG2PoolVariableDefinition.