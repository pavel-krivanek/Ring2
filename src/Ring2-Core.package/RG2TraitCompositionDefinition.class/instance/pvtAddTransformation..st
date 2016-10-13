private - backend access
pvtAddTransformation: aRG2TraitTransformationDefinition

	self environment verifyOwnership: aRG2TraitTransformationDefinition.
	
	transformations isRing2Resolved ifFalse: [ 
		self pvtCleanTransformations  ].
	
	transformations add: aRG2TraitTransformationDefinition.	