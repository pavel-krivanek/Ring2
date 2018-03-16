private - backend access
pvtRemoveGlobalVariable: aRG2GlobalVariable

	self environment verifyOwnership: aRG2GlobalVariable.
	
	globalVariables remove: aRG2GlobalVariable.