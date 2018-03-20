DONE
removeSharedPool: aRG2PoolVariable

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior removeSharedPool: aRG2PoolVariable from: self ].