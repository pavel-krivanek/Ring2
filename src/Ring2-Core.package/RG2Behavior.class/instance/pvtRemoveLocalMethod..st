private - backend interface
pvtRemoveLocalMethod: aRG2Method

	self environment verifyOwnership: aRG2Method.
	
	localMethods remove: aRG2Method.
	
