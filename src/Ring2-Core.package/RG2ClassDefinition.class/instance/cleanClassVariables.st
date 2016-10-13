accessing - backend
cleanClassVariables

	self backend forBehavior cleanClassVariablesFor: self.
	
	self announcer behaviorDefinitionModified: self.