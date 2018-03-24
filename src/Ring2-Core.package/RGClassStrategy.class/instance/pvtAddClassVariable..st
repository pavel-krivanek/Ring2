private - backend access
pvtAddClassVariable: aRGInstanceVariableDefinition

	self owner environment verifyOwnership: aRGInstanceVariableDefinition.
	
	classVariables isRing2Resolved ifFalse: [ 
		self pvtCleanClassVariables  ].
	
	classVariables add: aRGInstanceVariableDefinition.	