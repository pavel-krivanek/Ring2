private - backend access
pvtAddSharedPool: aRG2PoolVariable

	self environment verifyOwnership: aRG2PoolVariable.
	
	sharedPools isRing2Resolved ifFalse: [ 
		self pvtCleanSharedPools  ].
	
	sharedPools add: aRG2PoolVariable.	