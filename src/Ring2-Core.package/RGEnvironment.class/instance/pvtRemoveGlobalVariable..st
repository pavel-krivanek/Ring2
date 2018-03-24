private - backend access
pvtRemoveGlobalVariable: aRGGlobalVariable

	self environment verifyOwnership: aRGGlobalVariable.
	
	globalVariables remove: aRGGlobalVariable.