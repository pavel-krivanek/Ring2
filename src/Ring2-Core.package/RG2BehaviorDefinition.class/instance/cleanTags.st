accessing - backend
cleanTags

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior cleanClassTagsFor: self ].