private - backend interface
pvtRemoveLocalMethod: aRGMethod

	self environment verifyOwnership: aRGMethod.
	
	localMethods remove: aRGMethod.
	
