private - backend interface
pvtAddProtocol: aRG2ProtocolDefinition

	self environment verifyOwnership: aRG2ProtocolDefinition.
	
	protocols isRing2Resolved ifFalse: [ 
		self pvtCleanProtocols  ].
	
	protocols add: aRG2ProtocolDefinition.	
	