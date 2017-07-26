accessing - backend
removeLocalMethod: aRG2MethodDefinition 

	(aRG2MethodDefinition package = self package)
		ifFalse: [ aRG2MethodDefinition package removeExtensionMethod:  aRG2MethodDefinition ].
		
	self backend forBehavior removeLocalMethod: aRG2MethodDefinition from: self.
	
	self announcer methodRemoved: aRG2MethodDefinition.
