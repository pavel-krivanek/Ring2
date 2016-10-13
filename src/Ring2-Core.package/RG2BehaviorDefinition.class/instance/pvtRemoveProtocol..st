private - backend interface
pvtRemoveProtocol: aRG2ProtocolDefinition

	self environment verifyOwnership: aRG2ProtocolDefinition.
	
	protocols remove: aRG2ProtocolDefinition.
	
