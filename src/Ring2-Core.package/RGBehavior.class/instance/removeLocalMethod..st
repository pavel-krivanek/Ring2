accessing - backend
removeLocalMethod: aRGMethod 

	(aRGMethod package = self package)
		ifFalse: [ aRGMethod package removeExtensionMethod:  aRGMethod ].
		
	self backend forBehavior removeLocalMethod: aRGMethod from: self.
	
	self announcer methodRemoved: aRGMethod.
