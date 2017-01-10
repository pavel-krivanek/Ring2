accessing - backend
addSharedPool: aRG2PoolVariableDefinition 

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior addSharedPool: aRG2PoolVariableDefinition to: self ].