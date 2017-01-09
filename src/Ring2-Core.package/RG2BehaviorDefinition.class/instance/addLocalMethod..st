accessing - backend
addLocalMethod: aRG2MethodDefinition 

	self backend forBehavior addLocalMethod: aRG2MethodDefinition to: self.
	
	self announcer methodAdded: aRG2MethodDefinition.
