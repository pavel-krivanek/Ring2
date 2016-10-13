accessing - backend
removeSharedPool: aRG2PoolVariableDefinition

	self backend forBehavior removeSharedPool: aRG2PoolVariableDefinition from: self.
	
	self announcer behaviorDefinitionModified: self.