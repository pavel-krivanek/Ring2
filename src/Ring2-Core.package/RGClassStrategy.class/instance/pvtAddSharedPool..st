private - backend access
pvtAddSharedPool: anRGPoolVariable

	self environment verifyOwnership: anRGPoolVariable.
	
	sharedPools isRingResolved ifFalse: [ 
		self pvtCleanSharedPools  ].
	
	sharedPools add: anRGPoolVariable.	