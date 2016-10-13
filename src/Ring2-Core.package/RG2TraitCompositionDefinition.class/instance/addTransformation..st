accessing - backend
addTransformation: aRG2TraitTransformationDefinition 

	self backend forBehavior addTransformation: aRG2TraitTransformationDefinition to: self.
	
	self announcer behaviorDefinitionModified: self parent.