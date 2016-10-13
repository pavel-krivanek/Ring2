private - backend access
pvtAddClassVariable: aRG2InstanceVariableDefinition

	self environment verifyOwnership: aRG2InstanceVariableDefinition.
	
	classVariables isRing2Resolved ifFalse: [ 
		self pvtCleanClassVariables  ].
	
	classVariables add: aRG2InstanceVariableDefinition.	