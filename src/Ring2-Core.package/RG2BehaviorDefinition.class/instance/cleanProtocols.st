accessing - backend
cleanProtocols
	
	| newProtocol |

	self backend forBehavior cleanProtocolsFor: self.
	
	self methods isEmpty ifTrue: [ ^ true ].
	newProtocol := self ensureAsYetUnclassifiedProtocol.
	
	self localMethodsDo: [ :method |
		method protocol: newProtocol ].
	
	self announcer behaviorReorganized: self.
