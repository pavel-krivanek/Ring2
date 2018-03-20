DONE
addSharedPool: aRG2PoolVariable

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior addSharedPool: aRG2PoolVariable to: self ].