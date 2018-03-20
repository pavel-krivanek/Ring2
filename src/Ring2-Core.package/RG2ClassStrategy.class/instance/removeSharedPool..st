private - backend access
removeSharedPool: aRG2PoolVariable

	self owner announceDefinitionChangeDuring: [ 
		self backend forBehavior removeSharedPool: aRG2PoolVariable from: self owner].