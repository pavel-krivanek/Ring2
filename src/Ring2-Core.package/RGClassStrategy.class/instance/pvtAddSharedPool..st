private - backend access
pvtAddSharedPool: anRGPoolVariable

	self environment verifyOwnership: anRGPoolVariable.
	
	sharedPools isRing2Resolved ifFalse: [ 
		self pvtCleanSharedPools  ].
	
	sharedPools add: anRGPoolVariable.	