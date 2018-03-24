private - backend access
pvtAddSharedPool: aRGPoolVariable

	self environment verifyOwnership: aRGPoolVariable.
	
	sharedPools isRing2Resolved ifFalse: [ 
		self pvtCleanSharedPools  ].
	
	sharedPools add: aRGPoolVariable.	