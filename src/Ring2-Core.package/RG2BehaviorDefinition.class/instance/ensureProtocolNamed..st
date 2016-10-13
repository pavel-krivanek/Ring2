as yet unclassified
ensureProtocolNamed: aSymbol

	^ self protocols detect: [ :each | each name = aSymbol ] ifNone: [ 
		| newProtocol |
		newProtocol := RG2ProtocolDefinition named: aSymbol parent: self.
		self addProtocol: newProtocol.
		newProtocol ]