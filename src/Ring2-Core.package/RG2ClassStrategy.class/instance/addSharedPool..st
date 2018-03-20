private - backend access
addSharedPool: aRG2PoolVariable

	self owner announceDefinitionChangeDuring: [ 
		self backend forBehavior addSharedPool: aRG2PoolVariable to: self owner].