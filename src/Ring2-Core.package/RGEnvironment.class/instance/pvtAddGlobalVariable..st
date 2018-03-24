private - backend access
pvtAddGlobalVariable: aRGGlobalVariable

	self environment verifyOwnership: aRGGlobalVariable.
	
	globalVariables isRing2Resolved ifFalse: [ 
		self pvtCleanGlobalVariables  ].
	
	globalVariables add: aRGGlobalVariable.	