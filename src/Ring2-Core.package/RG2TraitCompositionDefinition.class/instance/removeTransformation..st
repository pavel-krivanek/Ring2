accessing - backend
removeTransformation: aRG2TraitTransformationDefinition

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior removeTransformation: aRG2TraitTransformationDefinition from: self ].