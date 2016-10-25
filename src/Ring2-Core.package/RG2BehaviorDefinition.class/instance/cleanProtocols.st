accessing - backend
cleanProtocols
	
	| newProtocol |

	self backend forBehavior cleanProtocolsFor: self.
	
	self localMethods isEmpty ifTrue: [ ^ self ].
	newProtocol := self ensureAsYetUnclassifiedProtocol.
	
	self localMethodsDo: [ :method |
		method protocol: newProtocol ].
	
	self announcer behaviorReorganized: self.
