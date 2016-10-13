private - backend access
pvtAddGlobalVariable: aRG2GlobalVariableDefinition

	self environment verifyOwnership: aRG2GlobalVariableDefinition.
	
	globalVariables isRing2Resolved ifFalse: [ 
		self pvtCleanGlobalVariables  ].
	
	globalVariables add: aRG2GlobalVariableDefinition.	