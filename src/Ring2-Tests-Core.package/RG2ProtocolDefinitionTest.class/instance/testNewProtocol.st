tests
testNewProtocol
	| protocol time |
	
	protocol := RG2ProtocolDefinition unnamed.
	
	self assert: (protocol isRing2Resolved).
	
	self assert: (protocol hasUnresolved: #name).

	self assert: protocol name equals: 'as yet unclassified'.
	protocol name: 'someProtocol'.
	
	self assert: (protocol unresolvedProperties isEmpty).
	self assert: protocol name equals: 'someProtocol'.

