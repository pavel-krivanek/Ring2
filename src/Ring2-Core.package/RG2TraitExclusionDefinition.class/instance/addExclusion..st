accessing - backend
addExclusion: aSymbol 

	self backend forBehavior addExclusion: aSymbol to: self.
	
	self announcer behaviorDefinitionModified: self parent parent.