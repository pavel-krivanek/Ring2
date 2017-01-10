accessing - backend
addTransformation: aRG2TraitTransformationDefinition 

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior addTransformation: aRG2TraitTransformationDefinition to: self ].