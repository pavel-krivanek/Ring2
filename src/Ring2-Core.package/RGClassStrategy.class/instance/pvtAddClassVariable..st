private - backend access
pvtAddClassVariable: anRGInstanceVariableDefinition

	self owner environment verifyOwnership: anRGInstanceVariableDefinition.
	
	classVariables isRing2Resolved ifFalse: [ 
		self pvtCleanClassVariables  ].
	
	classVariables add: anRGInstanceVariableDefinition.	