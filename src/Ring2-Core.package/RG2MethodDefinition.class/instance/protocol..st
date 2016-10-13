accessing - backend
protocol: aRG2ProtocolDefinition

	self backend forBehavior setProtocolFor: self to: aRG2ProtocolDefinition.
	self parent addProtocol: aRG2ProtocolDefinition
	
	