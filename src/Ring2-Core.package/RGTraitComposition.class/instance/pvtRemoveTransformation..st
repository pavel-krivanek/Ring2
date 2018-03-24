private - backend access
pvtRemoveTransformation: aRGTraitTransformation

	self environment verifyOwnership: aRGTraitTransformation.
	
	transformations remove: aRGTraitTransformation.