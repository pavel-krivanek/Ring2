accessing - backend
cleanAliases

	self backend forBehavior cleanAliasesFor: self.
	
	self announcer behaviorDefinitionModified: self parent parent.