accessing - backend
addTransformation: aRG2TraitTransformation 

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior addTransformation: aRG2TraitTransformation to: self ].