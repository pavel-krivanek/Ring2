accessing - backend
removeTransformation: aRG2TraitTransformation

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior removeTransformation: aRG2TraitTransformation from: self ].