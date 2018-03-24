accessing - backend
addLocalMethod: aRGMethod

	self backend forBehavior addLocalMethod: aRGMethod to: self.
	
	self announcer methodAdded: aRGMethod.
