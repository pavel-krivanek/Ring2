private - backend access
pvtAddSharedPool: aRG2PoolVariableDefinition

	self environment verifyOwnership: aRG2PoolVariableDefinition.
	
	sharedPools isRing2Resolved ifFalse: [ 
		self pvtCleanSharedPools  ].
	
	sharedPools add: aRG2PoolVariableDefinition.	