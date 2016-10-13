accessing - backend
addAlias: aSymbol 

	self backend forBehavior addAlias: aSymbol to: self.
	
	self announcer behaviorDefinitionModified: self parent parent.