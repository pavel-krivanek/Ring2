private - backend interface
pvtRemoveLocalMethod: aRG2MethodDefinition

	self environment verifyOwnership: aRG2MethodDefinition.
	
	localMethods remove: aRG2MethodDefinition.
	
