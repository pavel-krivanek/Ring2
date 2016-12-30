accessing - backend
tagWith: aSymbol 

	self backend forBehavior tagClass: self with: aSymbol.
	
	self announcer behaviorDefinitionModified: self.