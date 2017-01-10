accessing - backend
removeSharedPool: aRG2PoolVariableDefinition

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior removeSharedPool: aRG2PoolVariableDefinition from: self ].