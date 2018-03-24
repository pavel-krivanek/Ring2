accessing - backend
superclass: aRGBehavior

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior setSuperclassFor: self to: aRGBehavior ].