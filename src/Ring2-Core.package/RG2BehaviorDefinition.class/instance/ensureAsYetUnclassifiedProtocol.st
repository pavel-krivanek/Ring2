asYetUnclassified
ensureAsYetUnclassifiedProtocol
	^ self asYetUnclassifiedProtocolOrNil
		ifNotNil: [ :found | found ]
		ifNil: [ | newProtocol |
			newProtocol := RG2ProtocolDefinition unresolvedWithParent: self.
			newProtocol pvtName: self asYetUnclassifiedProtocolName.
			self pvtAddProtocol: newProtocol.
			^ newProtocol ]