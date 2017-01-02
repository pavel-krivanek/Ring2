accessing - backend
tagWith: aSymbol 

	self backend forBehavior tagClass: self with: aSymbol.
	
	self package addClassTag: aSymbol.
	
	self announcer behaviorDefinitionModified: self.