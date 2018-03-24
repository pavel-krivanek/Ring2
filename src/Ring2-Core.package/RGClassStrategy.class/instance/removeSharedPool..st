private - backend access
removeSharedPool: aRGPoolVariable

	self owner announceDefinitionChangeDuring: [ 
		self backend forBehavior removeSharedPool: aRGPoolVariable from: self owner].