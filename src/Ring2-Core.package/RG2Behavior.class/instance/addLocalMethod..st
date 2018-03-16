accessing - backend
addLocalMethod: aRG2Method

	self backend forBehavior addLocalMethod: aRG2Method to: self.
	
	self announcer methodAdded: aRG2Method.
