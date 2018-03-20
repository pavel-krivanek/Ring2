initialization
initialize

	super initialize.
	
	layout := self unresolvedValue: self defaultLayout. 
	self environment backend createUnresolvedClassGroupFor: self.
