accessing - backend
category: aaString

	self backend forBehavior setCategoryFor: self to: aaString.
	
	self announcer behaviorDefinitionModified: self.
	self announcer behaviorRecategorized: self.