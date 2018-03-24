accessing - backend
removeTransformation: aRGTraitTransformation

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior removeTransformation: aRGTraitTransformation from: self ].