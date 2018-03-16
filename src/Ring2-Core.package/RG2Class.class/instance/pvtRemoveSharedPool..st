private - backend access
pvtRemoveSharedPool: aRG2PoolVariable

	self environment verifyOwnership: aRG2PoolVariable.
	
	sharedPools remove: aRG2PoolVariable.