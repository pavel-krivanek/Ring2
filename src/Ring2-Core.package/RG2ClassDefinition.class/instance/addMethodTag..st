accessing - backend
addMethodTag: aSymbol 

	self backend forBehavior addMethodTag: aSymbol to: self.
	
	self announcer behaviorDefinitionModified: self.