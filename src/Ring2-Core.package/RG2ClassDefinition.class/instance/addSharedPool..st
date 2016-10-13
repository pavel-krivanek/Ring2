accessing - backend
addSharedPool: aRG2PoolVariableDefinition 

	self backend forBehavior addSharedPool: aRG2PoolVariableDefinition to: self.
	
	self announcer behaviorDefinitionModified: self.