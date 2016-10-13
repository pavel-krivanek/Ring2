accessing - backend
cleanTransformations

	self backend forBehavior cleanTransformationsFor: self.
	
	self announcer behaviorDefinitionModified: self parent.