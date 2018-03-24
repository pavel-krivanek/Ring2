private - backend access
pvtAddTransformation: anRGTraitTransformation

	self environment verifyOwnership: anRGTraitTransformation.
	
	transformations isRing2Resolved ifFalse: [ 
		self pvtCleanTransformations  ].
	
	transformations add: anRGTraitTransformation.	