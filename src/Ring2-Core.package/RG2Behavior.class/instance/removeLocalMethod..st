accessing - backend
removeLocalMethod: aRG2Method 

	(aRG2Method package = self package)
		ifFalse: [ aRG2Method package removeExtensionMethod:  aRG2Method ].
		
	self backend forBehavior removeLocalMethod: aRG2Method from: self.
	
	self announcer methodRemoved: aRG2Method.
