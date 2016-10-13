private - backend access
pvtRemoveTransformation: aRG2TraitTransformationDefinition

	self environment verifyOwnership: aRG2TraitTransformationDefinition.
	
	transformations remove: aRG2TraitTransformationDefinition.