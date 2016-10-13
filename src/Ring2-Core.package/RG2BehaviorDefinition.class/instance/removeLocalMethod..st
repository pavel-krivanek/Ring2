accessing - backend
removeLocalMethod: aRG2MethodDefinition 

	self backend forBehavior removeLocalMethod: aRG2MethodDefinition from: self.
	
	self announcer methodAdded: aRG2MethodDefinition.
