private - backend access
addSharedPool: aRGPoolVariable

	self owner announceDefinitionChangeDuring: [ 
		self privAddSharedPool: aRGPoolVariable ].