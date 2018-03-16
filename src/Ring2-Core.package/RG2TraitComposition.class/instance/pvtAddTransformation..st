private - backend access
pvtAddTransformation: aRG2TraitTransformation

	self environment verifyOwnership: aRG2TraitTransformation.
	
	transformations isRing2Resolved ifFalse: [ 
		self pvtCleanTransformations  ].
	
	transformations add: aRG2TraitTransformation.	