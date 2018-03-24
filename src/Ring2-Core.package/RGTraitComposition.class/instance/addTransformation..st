accessing - backend
addTransformation: aRGTraitTransformation 

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior addTransformation: aRGTraitTransformation to: self ].