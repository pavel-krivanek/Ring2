private - backend access
pvtRemoveTransformation: aRG2TraitTransformation

	self environment verifyOwnership: aRG2TraitTransformation.
	
	transformations remove: aRG2TraitTransformation.