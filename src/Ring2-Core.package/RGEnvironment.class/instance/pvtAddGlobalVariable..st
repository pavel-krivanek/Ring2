private - backend access
pvtAddGlobalVariable: anRGGlobalVariable

	self environment verifyOwnership: anRGGlobalVariable.
	
	globalVariables isRing2Resolved ifFalse: [ 
		self pvtCleanGlobalVariables  ].
	
	globalVariables add: anRGGlobalVariable.	