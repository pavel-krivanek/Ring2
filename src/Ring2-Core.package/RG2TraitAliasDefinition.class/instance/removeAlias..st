accessing - backend
removeAlias: aSymbol

	self backend forBehavior removeAlias: aSymbol from: self.
	
	self announcer behaviorDefinitionModified: self parent parent.