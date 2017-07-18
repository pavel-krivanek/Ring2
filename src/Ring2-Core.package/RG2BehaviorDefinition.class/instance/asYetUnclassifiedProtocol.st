asYetUnclassified
asYetUnclassifiedProtocol

	| aProtocol |
	aProtocol := RG2ProtocolDefinition unresolvedWithParent: self.
	aProtocol pvtName: self asYetUnclassifiedProtocolName.
	
	^ aProtocol
