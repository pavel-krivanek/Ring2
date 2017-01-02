accessing - backend
cleanTags

	self backend forBehavior cleanClassTagsFor: self.
	
	self announcer behaviorDefinitionModified: self.