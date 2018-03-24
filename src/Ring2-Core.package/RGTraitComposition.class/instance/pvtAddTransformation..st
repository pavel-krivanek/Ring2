private - backend access
pvtAddTransformation: aRGTraitTransformation

	self environment verifyOwnership: aRGTraitTransformation.
	
	transformations isRing2Resolved ifFalse: [ 
		self pvtCleanTransformations  ].
	
	transformations add: aRGTraitTransformation.	