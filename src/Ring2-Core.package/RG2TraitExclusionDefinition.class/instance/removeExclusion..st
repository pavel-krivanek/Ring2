accessing - backend
removeExclusion: aSymbol

	self backend forBehavior removeExclusion: aSymbol from: self.
	
	self announcer behaviorDefinitionModified: self parent parent.