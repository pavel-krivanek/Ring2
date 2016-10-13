accessing - backend
removeTransformation: aRG2TraitTransformationDefinition

	self backend forBehavior removeTransformation: aRG2TraitTransformationDefinition from: self.
	
	self announcer behaviorDefinitionModified: self parent.