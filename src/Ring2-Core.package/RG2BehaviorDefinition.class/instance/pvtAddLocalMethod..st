private - backend interface
pvtAddLocalMethod: aRG2MethodDefinition

	self environment verifyOwnership: aRG2MethodDefinition.
	
	localMethods isRing2Resolved ifFalse: [ 
		self pvtCleanLocalMethods  ].
	
	localMethods add: aRG2MethodDefinition.	
	