private - backend access
pvtAddGlobalVariable: aRG2GlobalVariable

	self environment verifyOwnership: aRG2GlobalVariable.
	
	globalVariables isRing2Resolved ifFalse: [ 
		self pvtCleanGlobalVariables  ].
	
	globalVariables add: aRG2GlobalVariable.	