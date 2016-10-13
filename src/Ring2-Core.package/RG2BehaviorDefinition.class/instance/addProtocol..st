accessing - backend
addProtocol: aRG2ProtocolDefinition 

	self backend forBehavior addProtocol: aRG2ProtocolDefinition to: self.
	
	self announcer behaviorReorganized: self.
